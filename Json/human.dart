import 'package:asd/address.dart';
import 'package:json_annotation/json_annotation.dart';

part 'human.g.dart';

@JsonSerializable()
class Human {
  String name;
  String surname;
  int age;
  List<Address> address;

  Human({
    required this.name, required this.surname, required this.age, required this.address, 
  });

  factory Human.fromJson(Map<String,dynamic> json) => _$HumanFromJson(json);


  Map<String, dynamic> toJson() => _$HumanToJson(this);
}
