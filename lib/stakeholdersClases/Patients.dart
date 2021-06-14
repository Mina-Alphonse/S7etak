import 'package:gp/stakeholdersClases/Doctors.dart';

class Patients{

 String mail;
 String name;
 String phone;
 String address;
 String insuranceCompany;
 String insuranceId;
 bool isInsured;
 String chronicDisease;
 String tests;
 String patientId;
 String age;
 String gender;

 Patients({
  this.patientId,
  this.chronicDisease,
  this.tests,
  this.name,
  this.phone,
  this.mail,
  this.age,
  this.gender,
  this.address,
  this.insuranceCompany,
  this.insuranceId,
  this.isInsured
 });
}