class CategoriesListData{
  final int id;
  final String name;

  CategoriesListData(this.id, this.name);
}
CategoriesListData all=new CategoriesListData(0,"All");

CategoriesListData doctor=new CategoriesListData(1,"Doctor");

CategoriesListData medicalLabs=new CategoriesListData(2,"Medical labs");

CategoriesListData radiologyLabs=new CategoriesListData(3,"Radiology labs");

CategoriesListData pharmacies=new CategoriesListData(4,"Pharmacies");

CategoriesListData hospitales=new CategoriesListData(5,"Hospitales");

final categoriesData=[
  all,doctor,medicalLabs,radiologyLabs,pharmacies,hospitales
];