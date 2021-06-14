import 'package:gp/stakeholdersClases/CompanyPackages.dart';
import 'package:gp/stakeholdersClases/MedicalPlaces.dart';

class InsuranceCompany
{
  CompanyPackages packages;
  String name;
  String address;
  String companyPhoneNumber;
  MedicalPlaces places;

InsuranceCompany({
  this.name,
  this.address,
  this.companyPhoneNumber,
  this.places,
  this.packages,
});
}
