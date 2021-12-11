// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'liste_vetements_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ListeVetementsRecord> _$listeVetementsRecordSerializer =
    new _$ListeVetementsRecordSerializer();

class _$ListeVetementsRecordSerializer
    implements StructuredSerializer<ListeVetementsRecord> {
  @override
  final Iterable<Type> types = const [
    ListeVetementsRecord,
    _$ListeVetementsRecord
  ];
  @override
  final String wireName = 'ListeVetementsRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ListeVetementsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.marque;
    if (value != null) {
      result
        ..add('marque')
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
    value = object.nom;
    if (value != null) {
      result
        ..add('nom')
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
  ListeVetementsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ListeVetementsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'marque':
          result.marque = serializers.deserialize(value,
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
        case 'nom':
          result.nom = serializers.deserialize(value,
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

class _$ListeVetementsRecord extends ListeVetementsRecord {
  @override
  final String marque;
  @override
  final String taille;
  @override
  final String image;
  @override
  final String nom;
  @override
  final double prix;
  @override
  final DocumentReference<Object> reference;

  factory _$ListeVetementsRecord(
          [void Function(ListeVetementsRecordBuilder) updates]) =>
      (new ListeVetementsRecordBuilder()..update(updates)).build();

  _$ListeVetementsRecord._(
      {this.marque,
      this.taille,
      this.image,
      this.nom,
      this.prix,
      this.reference})
      : super._();

  @override
  ListeVetementsRecord rebuild(
          void Function(ListeVetementsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListeVetementsRecordBuilder toBuilder() =>
      new ListeVetementsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListeVetementsRecord &&
        marque == other.marque &&
        taille == other.taille &&
        image == other.image &&
        nom == other.nom &&
        prix == other.prix &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, marque.hashCode), taille.hashCode),
                    image.hashCode),
                nom.hashCode),
            prix.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListeVetementsRecord')
          ..add('marque', marque)
          ..add('taille', taille)
          ..add('image', image)
          ..add('nom', nom)
          ..add('prix', prix)
          ..add('reference', reference))
        .toString();
  }
}

class ListeVetementsRecordBuilder
    implements Builder<ListeVetementsRecord, ListeVetementsRecordBuilder> {
  _$ListeVetementsRecord _$v;

  String _marque;
  String get marque => _$this._marque;
  set marque(String marque) => _$this._marque = marque;

  String _taille;
  String get taille => _$this._taille;
  set taille(String taille) => _$this._taille = taille;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _nom;
  String get nom => _$this._nom;
  set nom(String nom) => _$this._nom = nom;

  double _prix;
  double get prix => _$this._prix;
  set prix(double prix) => _$this._prix = prix;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ListeVetementsRecordBuilder() {
    ListeVetementsRecord._initializeBuilder(this);
  }

  ListeVetementsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _marque = $v.marque;
      _taille = $v.taille;
      _image = $v.image;
      _nom = $v.nom;
      _prix = $v.prix;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListeVetementsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListeVetementsRecord;
  }

  @override
  void update(void Function(ListeVetementsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListeVetementsRecord build() {
    final _$result = _$v ??
        new _$ListeVetementsRecord._(
            marque: marque,
            taille: taille,
            image: image,
            nom: nom,
            prix: prix,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
