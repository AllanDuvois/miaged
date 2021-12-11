import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'panier_record.g.dart';

abstract class PanierRecord
    implements Built<PanierRecord, PanierRecordBuilder> {
  static Serializer<PanierRecord> get serializer => _$panierRecordSerializer;

  @nullable
  String get nom;

  @nullable
  String get taille;

  @nullable
  String get image;

  @nullable
  double get prix;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PanierRecordBuilder builder) => builder
    ..nom = ''
    ..taille = ''
    ..image = ''
    ..prix = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('panier');

  static Stream<PanierRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PanierRecord._();
  factory PanierRecord([void Function(PanierRecordBuilder) updates]) =
      _$PanierRecord;

  static PanierRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPanierRecordData({
  String nom,
  String taille,
  String image,
  double prix,
}) =>
    serializers.toFirestore(
        PanierRecord.serializer,
        PanierRecord((p) => p
          ..nom = nom
          ..taille = taille
          ..image = image
          ..prix = prix));
