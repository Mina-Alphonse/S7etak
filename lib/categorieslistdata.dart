import 'package:flutter/material.dart';
class categoriesListData{
  final int id;
  final String name;

  categoriesListData(this.id, this.name);
}
categoriesListData all=new categoriesListData(0,"All");

categoriesListData Doctor=new categoriesListData(1,"Doctor");

categoriesListData MEdicalLabs=new categoriesListData(2,"Medical labs");

categoriesListData RadiologyLabs=new categoriesListData(3,"Radiology labs");

categoriesListData Pharmacies=new categoriesListData(4,"Pharmacies");

categoriesListData Hospitales=new categoriesListData(5,"Hospitales");

final categoriesdata=[
  all,Doctor,MEdicalLabs,RadiologyLabs,Pharmacies,Hospitales
];