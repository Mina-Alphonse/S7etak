import 'package:gp/stakeholdersClases/Doctors.dart';

class Hospitals
{
  String hospitalName;
  String address;
  String phone;
  String location;
  List<Doctors> doctors;

  Hospitals({
    this.hospitalName,
    this.address,
    this.doctors,
    this.location,
    this.phone
});
}