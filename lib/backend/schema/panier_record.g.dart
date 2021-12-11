// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'panier_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PanierRecord> _$panierRecordSerializer =
    new _$PanierRecordSerializer();

class _$PanierRecordSerializer implements StructuredSerializer<PanierRecord> {
  @override
  final Iterable<Type> types = const [PanierRecord, _$PanierRecord];
  @override
  final String wireName = 'PanierRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, PanierRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.nom;
    if (value != null) {
      result
        ..add('nom')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.taille;
    if (value != null) {
      result
        ..add('taille')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prix;
    if (value != null) {
      result
        ..add('prix')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  PanierRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PanierRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'nom':
          result.nom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'taille':
          result.taille = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'prix':
          result.prix = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$PanierRecord extends PanierRecord {
  @override
  final String nom;
  @override
  final String taille;
  @override
  final String image;
  @override
  final double prix;
  @override
  final DocumentReference<Object> reference;

  factory _$PanierRecord([void Function(PanierRecordBuilder) updates]) =>
      (new PanierRecordBuilder()..update(updates)).build();

  _$PanierRecord._(
      {this.nom, this.taille, this.image, this.prix, this.reference})
      : super._();

  @override
  PanierRecord rebuild(void Function(PanierRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PanierRecordBuilder toBuilder() => new PanierRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PanierRecord &&
        nom == other.nom &&
        taille == other.taille &&
        image == other.image &&
        prix == other.prix &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, nom.hashCode), taille.hashCode), image.hashCode),
            prix.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PanierRecord')
          ..add('nom', nom)
          ..add('taille', taille)
          ..add('image', image)
          ..add('prix', prix)
          ..add('reference', reference))
        .toString();
  }
}

class PanierRecordBuilder
    implements Builder<PanierRecord, PanierRecordBuilder> {
  _$PanierRecord _$v;

  String _nom;
  String get nom => _$this._nom;
  set nom(String nom) => _$this._nom = nom;

  String _taille;
  String get taille => _$this._taille;
  set taille(String taille) => _$this._taille = taille;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  double _prix;
  double get prix => _$this._prix;
  set prix(double prix) => _$this._prix = prix;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  PanierRecordBuilder() {
    PanierRecord._initializeBuilder(this);
  }

  PanierRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nom = $v.nom;
      _taille = $v.taille;
      _image = $v.image;
      _prix = $v.prix;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PanierRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PanierRecord;
  }

  @override
  void update(void Function(PanierRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PanierRecord build() {
    final _$result = _$v ??
        new _$PanierRecord._(
            nom: nom,
            taille: taille,
            image: image,
            prix: prix,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
