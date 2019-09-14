import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:lssy/model/company.dart';
import 'package:lssy/widgets/company/company_detail_page.dart';
import 'package:lssy/widgets/company/company_item.dart';

class CompanyPage extends StatefulWidget{
  @override
  _CompanyPageState createState() => _CompanyPageState();
}

class _CompanyPageState extends State<CompanyPage> with AutomaticKeepAliveClientMixin{
  List<Company> companyList = List<Company>();

  Future<List<Company>> _fetchCompanyList() async {
    List<Company> companyList = List<Company>();
    Map<String, dynamic> result = {
      "data":{
        "companies":[
          {
            "id":"1",
            "company":"company1",
            "logo":"https://img01.sogoucdn.com/app/a/100520021/be140097bf68ae649983e69b53427c68",
            "info":"info1",
            "hot":"hot1"
          },
          {
            "id":"2",
            "company":"company2",
            "logo":"https://img03.sogoucdn.com/app/a/100520021/4bf5ad5f57be52d087bd39a155b605a2",
            "info":"info2",
            "hot":"hot2"
          },
          {
            "id":"3",
            "company":"company3",
            "logo":"http://t1.hxzdhn.com/uploads/tu/201602/144/jptq5sgp5cq.jpg",
            "info":"info3",
            "hot":"hot3"
          },
          {
            "id":"4",
            "company":"company4",
            "logo":"https://img02.sogoucdn.com/app/a/100520021/1969ca9ff5ba12dc926df5c1f7542e35",
            "info":"info4",
            "hot":"hot4"
          },
        ]
      }
    };
    for(dynamic data in result['data']['companies']){
      Company companyData = Company.fromJson(data);
      companyList.add(companyData);
    }
    return companyList;
  }

  @override
  bool get wantKeepAlive => true;

  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: new Text('公 司',style: new TextStyle(fontSize: 20.0,color: Colors.white)),
        actions: <Widget>[
          new IconButton(icon: new Icon(
            Icons.search,
            color: Colors.white,
          ), onPressed: (){})
        ],
      ),
      body: new Center(
        child: FutureBuilder(
          future: _fetchCompanyList(),
          builder: (context,AsyncSnapshot snapshot){
            switch (snapshot.connectionState){
              case ConnectionState.none:
              case ConnectionState.waiting:
                return new CircularProgressIndicator();
              default:
                if (snapshot.hasError)
                  return new Text('Error: ${snapshot.error}');
                else
                  return _createListView(context,snapshot);
            }
          },
        ),
      ),
    );
  }


  Widget _createListView(BuildContext context, AsyncSnapshot snapshot) {
    List<Company> companyList = snapshot.data;
    return ListView.builder(
      key: new PageStorageKey('company-list'),
      itemCount: companyList.length,
      itemBuilder: (BuildContext context, int index) {
        return CompanyItem(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                // fullscreenDialog: true,
                builder: (context) => CompanyDetailPage(
                    company: companyList[index], heroLogo: "heroLogo${index}"),
              ),
            );
          },
          company: companyList[index],
          heroLogo: "heroLogo${index}",
        );
      },
    );
  }

}