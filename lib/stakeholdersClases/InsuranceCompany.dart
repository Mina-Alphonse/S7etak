import 'package:gp/stakeholdersClases/CompanyPackages.dart';
import 'package:gp/stakeholdersClases/MedicalPlaces.dart';

class InsuranceCompany
{
  List<CompanyPackages> packages;
  String name;
  String address;
  String companyPhoneNumber;
  List<MedicalPlaces> places;
  String companyID;

InsuranceCompany({
  this.name,
  this.address,
  this.companyPhoneNumber,
  this.places,
  this.packages,
});

void setDocId(String id)
{
  this.companyID = id;
}

}
