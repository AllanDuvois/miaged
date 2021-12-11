import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'liste_vetements_record.g.dart';

abstract class ListeVetementsRecord
    implements Built<ListeVetementsRecord, ListeVetementsRecordBuilder> {
  static Serializer<ListeVetementsRecord> get serializer =>
      _$listeVetementsRecordSerializer;

  @nullable
  String get marque;

  @nullable
  String get taille;

  @nullable
  String get image;

  @nullable
  String get nom;

  @nullable
  double get prix;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ListeVetementsRecordBuilder builder) => builder
    ..marque = ''
    ..taille = ''
    ..image = ''
    ..nom = ''
    ..prix = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('listeVetements');

  static Stream<ListeVetementsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ListeVetementsRecord._();
  factory ListeVetementsRecord(
          [void Function(ListeVetementsRecordBuilder) updates]) =
      _$ListeVetementsRecord;

  static ListeVetementsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createListeVetementsRecordData({
  String marque,
  String taille,
  String image,
  String nom,
  double prix,
}) =>
    serializers.toFirestore(
        ListeVetementsRecord.serializer,
        ListeVetementsRecord((l) => l
          ..marque = marque
          ..taille = taille
          ..image = image
          ..nom = nom
          ..prix = prix));
