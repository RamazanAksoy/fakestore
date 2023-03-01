import 'package:json_annotation/json_annotation.dart';
part 'req_user_information.g.dart';

@JsonSerializable()
class ReqUserInformation {
  final String? email;
  final String? username;
  final String? password;
  final Name? name;
  final Address? address;
  final String? phone;

  ReqUserInformation(
      {this.email, this.username, this.password, this.name, this.address, this.phone});

  factory ReqUserInformation.fromJson(Map<String, dynamic> json) =>
      _$ReqUserInformationFromJson(json);
  Map<String, dynamic> toJson() => _$ReqUserInformationToJson(this);
}

@JsonSerializable()
class Name {
  final String? firstname;
  final String? lastname;

  Name({this.firstname, this.lastname});

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
  Map<String, dynamic> toJson() => _$NameToJson(this);
}

@JsonSerializable()
class Address {
  final String? city;
  final String? street;
  final int? number;
  final String? zipcode;
  final Geolocation? geolocation;

  Address({this.city, this.street, this.number, this.zipcode, this.geolocation});

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
  Map<String, dynamic> toJson() => _$AddressToJson(this);
}

@JsonSerializable()
class Geolocation {
  final String? lat;
  final String? long;

  Geolocation({this.lat, this.long});

  factory Geolocation.fromJson(Map<String, dynamic> json) => _$GeolocationFromJson(json);
  Map<String, dynamic> toJson() => _$GeolocationToJson(this);
}
