import 'package:gp/stakeholdersClases/CompanyPackages.dart';
import 'package:gp/stakeholdersClases/Doctors.dart';
import 'package:gp/stakeholdersClases/Hospitals.dart';
import 'package:gp/stakeholdersClases/InsuranceCompany.dart';
import 'package:gp/stakeholdersClases/Labs.dart';
import 'package:gp/stakeholdersClases/MedicalPlaces.dart';
import 'package:gp/stakeholdersClases/Patients.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gp/stakeholdersClases/Pharmacies.dart';
import 'package:gp/stakeholdersClases/labResults.dart';

class DatabaseService {
  //Data IDs
  final String uid;
  final String insuranceCompanyId;

  DatabaseService({this.uid, this.insuranceCompanyId});

  //Collection reference
  final CollectionReference infoCollection =
      Firestore.instance.collection('Patients Personal Data');
  final CollectionReference labsCollection =
      Firestore.instance.collection('Labs');
  final CollectionReference pharmaciesCollection =
      Firestore.instance.collection('Pharmacies');
  final CollectionReference insuranceCompanyCollection =
      Firestore.instance.collection('Insurance Company');
  final CollectionReference hospitalsCollection =
      Firestore.instance.collection('Hospitals');
  final CollectionReference doctorsCollection =
      Firestore.instance.collection('Doctors');
  final CollectionReference labResultsCollection =
      Firestore.instance.collection('Lab Results');

  //Data Retrieval Lists
  List<Lab> finalLabs = List<Lab>();
  List<InsuranceCompany> finalInsuranceCompany = List<InsuranceCompany>();
  List<Pharmacies> finalPharmacies = List<Pharmacies>();
  List<Hospitals> finalHospitals = List<Hospitals>();
  List<LabResults> finalLabResults = List<LabResults>();

  //Labs Data Retrieval
  Stream<List<Lab>> get labsData {
    return labsCollection.snapshots().map(_labsDataFromSnapshot);
  }

  List<Lab> _labsDataFromSnapshot(QuerySnapshot snapshot) {
    finalLabs.clear();
    finalLabs = snapshot.documents.map((lab) {
      return Lab(
        name: lab.data['name'] ?? '',
        phone: lab.data['phone'] ?? '',
        dates: lab.data['dates'] ?? '',
        address: lab.data['address'] ?? '',
      );
    }).toList();
    return finalLabs;
  }

  //Pharmacies Data Retrieval
  Stream<List<Pharmacies>> get pharmaciesData {
    return pharmaciesCollection.snapshots().map(_pharmacyDataFromSnapshot);
  }

  List<Pharmacies> _pharmacyDataFromSnapshot(QuerySnapshot snapshot) {
    finalPharmacies.clear();
    finalPharmacies = snapshot.documents.map((pharmacy) {
      return Pharmacies(
        name: pharmacy.data['name'],
        address: pharmacy.data['address'],
      );
    }).toList();
    return finalPharmacies;
  }

  //Patient Data Retrieval
  Stream<Patients> get patientData {
    return infoCollection
        .document(uid)
        .snapshots()
        .map(_patientDataFromSnapshot);
  }

  Patients _patientDataFromSnapshot(DocumentSnapshot snapshot) {
    return Patients(
      patientId: uid,
      name: snapshot.data['name'],
      phone: snapshot.data['phone'],
      mail: snapshot.data['email'],
      address: snapshot.data['address'],
      age: snapshot.data['age'],
      chronicDisease: getChronicDiseases(snapshot.data['chronicDisease']),
      diagnoses: getDiagnoses(snapshot.data['diagnosis']),
      gender: snapshot.data['gender'],
      insuranceCompany: snapshot.data['insuranceCompany'],
      insuranceId: snapshot.data['insuranceId'],
      isInsured: snapshot.data['inInsured'],
      // tests: snapshot.data['tests'],
    );
  }

  List<String> getChronicDiseases(dynamic docs) {
    List<String> chronicDiseaseList = List<String>();
    docs.forEach((document) {
      String d = document;
      chronicDiseaseList.add(d);
    });
    return chronicDiseaseList;
  }

  List<String> getDiagnoses(dynamic docs) {
    List<String> diagnosisDiseaseList = List<String>();
    docs.forEach((document) {
      String d = document;
      diagnosisDiseaseList.add(d);
    });
    return diagnosisDiseaseList;
  }

  //Insurance Company Data Retrieval
  Stream<List<InsuranceCompany>> get insuranceCompanyData {
    return insuranceCompanyCollection
        .snapshots()
        .map(_insuranceCompanyDataFromSnapshot);
  }

  List<InsuranceCompany> _insuranceCompanyDataFromSnapshot(
      QuerySnapshot snapshot) {
    finalInsuranceCompany.clear();
    finalInsuranceCompany = snapshot.documents.map((company) {
      //medical places that have contract with the insurance company
      return InsuranceCompany(
        name: company.data['name'],
        address: company.data['address'],
        companyPhoneNumber: company.data['phone'],
        places: getMedicalPlaces(company.data['medicalPlaces']),
        packages: getPackages(company.data['packages']),
      );
    }).toList();
    return finalInsuranceCompany;
  }

  List<MedicalPlaces> getMedicalPlaces(dynamic docs) {
    List<MedicalPlaces> medicalPlaces = List<MedicalPlaces>();
    docs.forEach((document) {
      MedicalPlaces d = MedicalPlaces(
        name: document["name"],
        address: document["address"],
        placeType: document["placeType"],
        phone: document["phone"],
      );
      medicalPlaces.add(d);
    });
    return medicalPlaces;
  }

  List<CompanyPackages> getPackages(dynamic docs) {
    List<CompanyPackages> companyPackagesList = List<CompanyPackages>();
    docs.forEach((document) {
      CompanyPackages d = CompanyPackages(
        name: document["name"],
        places: getMedicalPlaces(document["places"]),
      );
      companyPackagesList.add(d);
    });
    return companyPackagesList;
  }

  Stream<List<LabResults>> get labResultsData {
    return labResultsCollection.snapshots().map(_labResultsDataFromSnapshot);
  }

  List<LabResults> _labResultsDataFromSnapshot(QuerySnapshot snapshot) {
    finalLabResults.clear();
    finalLabResults = snapshot.documents.map((document) {
      return LabResults(
        patientEmail: document.data["email"],
        url: document.data["resultFile"],
        name: document.data["name"] ?? "",
      );
    }).toList();
    return finalLabResults;
  }

  //Hospital Data Retrieval
  Stream<List<Hospitals>> get hospitalsData {
    return hospitalsCollection.snapshots().map(_hospitalDataFromSnapshot);
  }

  List<Hospitals> _hospitalDataFromSnapshot(QuerySnapshot snapshot) {
    finalHospitals.clear();
    finalHospitals = snapshot.documents.map((hospital) {
      return Hospitals(
        hospitalName: hospital.data['name'],
        address: hospital.data['address'],
        phone: hospital.data['phone'],
        location: hospital.data['location'],
        doctors: hospital.data['doctors'] != null
            ? getHospitalDoctorsList(hospital.data['doctors'])
            : List<Doctors>(),
      );
    }).toList();
    return finalHospitals;
  }

  Future<List<Doctors>> doctorsListing(QuerySnapshot doctors) {
    List<Doctors> doctorsList = [];
    doctors.documents.forEach((doctor) {
      Doctors doctorData = Doctors(
        doctorId: doctor.documentID,
        name: doctor.data['name'],
        phone: doctor.data['phone'],
        dates: doctor.data['dates'],
        title: doctor.data['title'],
        specialty: doctor.data['specialty'],
      );
      doctorsList.add(doctorData);
    });
    return Future.value(doctorsList);
  }

  List<Doctors> doctorsList;

  Stream<List<Doctors>> get doctorsData {
    return doctorsCollection.snapshots().map(_doctorDataFromSnapshot);
  }

  List<Doctors> _doctorDataFromSnapshot(QuerySnapshot snapshot) {
    List<Doctors> doctors = [];
    doctors = snapshot.documents.map((document) {
      return Doctors(
        name: document["name"] ?? " ",
        title: document["title"] ?? " ",
        specialty: document["specialty"] ?? "",
        phone: document["phone"] ?? "",
        dates: document["dates"] ?? "",
        doctorId: document.documentID,
      );
    }).toList();
    return doctors;
  }




  Stream<List<Doctors>> get hospitalDoctorsData {
    return doctorsCollection.snapshots().map(_hospitalDoctorDataFromSnapshot);
  }

  List<Doctors> _hospitalDoctorDataFromSnapshot(QuerySnapshot snapshot) {
    List<Doctors> doctors = [];
    doctors = snapshot.documents.map((document) {
      return Doctors(
        name: document["name"] ?? " ",
        title: document["title"] ?? " ",
        specialty: document["specialty"] ?? "",
        phone: document["phone"] ?? "",
        dates: document["dates"] ?? "",
        doctorId: document.documentID,
      );
    }).toList();
    return doctors;
  }

  // ignore: missing_return
  List<Doctors> getHospitalDoctorsList(dynamic docs) {
    List<Doctors> allDoctors;
    hospitalDoctorsData.first.then((value) {
      allDoctors = value;
      List<Doctors> doctorList = List<Doctors>();
      docs.forEach((element) {
        for (int i = 0; i < allDoctors.length; i++) {
          if (allDoctors[i].doctorId == element) doctorList.add(allDoctors[i]);
        }
      });
      return doctorList;
    });
  }

  Future updatePatientData(Patients patient) async {
    return await infoCollection.document(uid).setData({
      'name': patient.name,
      'email': patient.mail,
      'phone': patient.phone,
      'age': patient.age,
      'gender': patient.gender,
      'insuranceId': patient.insuranceId,
      'insuranceCompany': patient.insuranceCompany,
      'isInsured': patient.isInsured,
    });
  }

  Future updatePatientDataFromSettings(Patients patient) async {
    return await infoCollection.document(uid).setData({
      'name': patient.name,
      'mail': patient.mail,
      'phone': patient.phone,
    });
  }
}
