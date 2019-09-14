class CompanyDetail {
  final String id;
  final String inc;
  final List companyImagesResult;

  CompanyDetail({this.id, this.inc, this.companyImagesResult});

  factory CompanyDetail.fromJson(Map<String, dynamic> json) {
    return CompanyDetail(
        id: json['id'],
        inc: json['inc'],
        companyImagesResult: json['companyImagesResult'] as List);
  }
}