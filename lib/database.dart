import 'package:gp/stakeholdersClases/CompanyPackages.dart';
import 'package:gp/stakeholdersClases/Doctors.dart';
import 'package:gp/stakeholdersClases/Hospitals.dart';
import 'package:gp/stakeholdersClases/InsuranceCompany.dart';
import 'package:gp/stakeholdersClases/Labs.dart';
import 'package:gp/stakeholdersClases/MedicalPlaces.dart';
import 'package:gp/stakeholdersClases/Patients.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gp/stakeholdersClases/Pharmacies.dart';

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

  //Data Retrieval Lists
  List<Lab> finalLabs = List<Lab>();
  List<InsuranceCompany> finalInsuranceCompany = List<InsuranceCompany>();
  List<Pharmacies> finalPharmacies = List<Pharmacies>();
  List<Hospitals> finalHospitals = List<Hospitals>();

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
      mail: snapshot.data['mail'],
      address: snapshot.data['address'],
      age: snapshot.data['age'],
      // chronicDisease: snapshot.data['chronicDisease'],
      gender: snapshot.data['gender'],
      insuranceCompany: snapshot.data['insuranceCompany'],
      insuranceId: snapshot.data['insuranceId'],
      isInsured: snapshot.data['inInsured'],
      // tests: snapshot.data['tests'],
    );
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
        places: getMedicalPlaces( company.data['medicalPlaces']),
        packages: getPackages(company.data['packages']),
      );
    }).toList();
    return finalInsuranceCompany;
  }

  List<MedicalPlaces> getMedicalPlaces ( dynamic docs){
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
  List<CompanyPackages> getPackages (dynamic docs){
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
  //Hospital Data Retrieval
  Stream<List<Hospitals>> get hospitalsData {
    return hospitalsCollection.snapshots().map(_hospitalDataFromSnapshot);
  }

  // Future<List<Doctors>> doctorsListing(QuerySnapshot doctors) {
  //   List<Doctors> doctorsList = [];
  //   doctors.documents.forEach((doctor) {
  //     Doctors doctorData = Doctors(
  //       doctorId: doctor.documentID,
  //       name: doctor.data['name'],
  //       phone: doctor.data['phone'],
  //       dates: doctor.data['dates'],
  //       title: doctor.data['title'],
  //       specialty: doctor.data['specialty'],
  //     );
  //     doctorsList.add(doctorData);
  //   });
  //   return Future.value(doctorsList);
  // }

  List<Doctors> doctorsList;

  List<Hospitals> _hospitalDataFromSnapshot(QuerySnapshot snapshot) {
    finalHospitals.clear();
    finalHospitals = snapshot.documents.map((hospital) {
      return Hospitals(
        hospitalName: hospital.data['name'],
        address: hospital.data['address'],
        phone: hospital.data['phone'],
        location: hospital.data['location'],
        // doctors: getHospitalDoctorsList(hospital.data['doctors']),
      );
    }).toList();
    return finalHospitals;
  }

  List<Doctors> getHospitalDoctorsList(dynamic docs) {
    List<Doctors> doctorList = List<Doctors>();
    docs.forEach((document) {
      Doctors d = Doctors(
        name: document["name"],
        title: document["title"],
        specialty: document["specialty"],
        phone: document["phone"],
        dates: document["dates"],
      );
      doctorList.add(d);
    });
    return doctorList;
  }

  Future updatePatientData(Patients patient) async {
    return await infoCollection.document(uid).setData({
      'name': patient.name,
      'mail': patient.mail,
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

  ///Referal Data Starts Here
  ///All Functions under this comments are CRUD for Referrals

// final List<ReferalData> referalDataList = new List<ReferalData>();
// List<ReferalData> readReferalsCollection(QuerySnapshot snapshot) {
//
//   snapshot.documents.forEach((doc) {
//     ReferalData referalData = new ReferalData(
//       name: doc.data['name'],
//       phone: doc.data['phone'],
//       ZIPCode: doc.data['ZIPCode'],
//       timeToContact: doc.data['timeToContact'],
//       state: doc.data['state'],
//       comments: doc.data['comments'],
//       city: doc.data['city'],
//       email: doc.data['email'],
//       status: doc.data['status'],
//       paid: doc.data['paid'],
//       contacted: doc.data['contacted'],
//       came: doc.data['came'],
//       amountOfMoney: doc.data['amountOfMoney'],
//       bought: doc.data['bought'],
//       lookingFor: doc.data['lookingFor'],
//       downPaymentPlanned: doc.data['downPaymentPlanned'],
//       downPaymentPaid: doc.data['downPaymentPaid'],
//     );
//     referalData.setDocumentID(doc.documentID);
//     referalDataList.add(referalData);
//   });
//   return referalDataList;
// }
//
// // Get the Stream
// Stream<List<ReferalData>> get referals {
//   return infoCollection.document(uid).collection('Referals').snapshots()
//       .map(readReferalsCollection);
// }

// Future updateReferalData(ReferalData referal, User unique) async
// {
//   return await infoCollection.document(uid).collection('Referals').document(referal.documentID).updateData({
//     'name' : referal.name,
//     'phone': referal.phone,
//     'email': referal.email,
//     'timeToContact': referal.timeToContact,
//     'city': referal.city,
//     'state': referal.state,
//     'ZIPCode':referal.ZIPCode,
//     'comments': referal.comments,
//     'status' : referal.status,
//     'paid' : referal.paid,
//     'contacted' : referal.contacted,
//     'came' : referal.came,
//     'amountOfMoney' : referal.amountOfMoney,
//     'bought': referal.bought,
//     'lookingFor' : referal.lookingFor,
//     'downPaymentPlanned' : referal.downPaymentPlanned,
//     'downPaymentPaid' : referal.downPaymentPaid,
//   });
// }
//
// Future deleteReferalData(ReferalData kids, User unique) async
// {
//   return await infoCollection.document(uid).collection('Referals').document(kids.documentID).delete();
// }

}
