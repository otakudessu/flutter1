// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class tes {
  final int id;
  final String name;
  final String address;
  tes({
    required this.id,
    required this.name,
    required this.address,
  });

  // saya lagi gabut
  int getInt() {
    return 0;
  }

  tes copyWith({
    int? id,
    String? name,
    String? address,
  }) {
    return tes(
      id: id ?? this.id,
      name: name ?? this.name,
      address: address ?? this.address,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'address': address,
    };
  }

  factory tes.fromMap(Map<String, dynamic> map) {
    return tes(
      id: map['id'] as int,
      name: map['name'] as String,
      address: map['address'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory tes.fromJson(String source) =>
      tes.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'tes(id: $id, name: $name, address: $address)';

  @override
  bool operator ==(covariant tes other) {
    if (identical(this, other)) return true;

    return other.id == id && other.name == name && other.address == address;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ address.hashCode;
}
