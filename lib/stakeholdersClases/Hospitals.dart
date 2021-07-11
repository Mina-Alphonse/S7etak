import 'package:gp/stakeholdersClases/Doctors.dart';

class Hospitals
{
  String hospitalName;
  String address;
  String phone;
  String location;
  List<Doctors> doctors;
  List<String> doctorsReference;

  Hospitals({
    this.hospitalName,
    this.address,
    this.doctors,
    this.doctorsReference,
    this.location,
    this.phone
});
}