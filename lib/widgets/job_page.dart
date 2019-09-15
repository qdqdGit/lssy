import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:lssy/model/job.dart';
import 'package:lssy/widgets/job/job_item.dart';

class JobPage extends StatefulWidget{
  _JobPageState createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> with AutomaticKeepAliveClientMixin{
  List<Job> jobList = List<Job>();

  Future<List<Job>> _fetchJobList() async {
    List<Job> jobList = List<Job>();

    Map<String, dynamic> result = {
      "data":{
        "jobs":[
          {
            "id":"1",
            "title":"标题1",
            "salary":"salary1",
            "company":"company1",
            "info":"info1",
            "category":"category1",
            "head":"https://p2.music.126.net/Gdh7VcGd22emCGjHiNMgtw==/3439272373022999.jpg?param=140y140",
            "publish":"publish1"
          },
          {
            "id":"2",
            "title":"标题2",
            "salary":"salary2",
            "company":"company2",
            "info":"info2",
            "category":"category2",
            "head":"https://p3.music.126.net/LKe092SxtXt6LcZnSyK5aQ==/109951164361508302.jpg?param=200y200",
            "publish":"publish2"
          },
          {
            "id":"3",
            "title":"标题3",
            "salary":"salary3",
            "company":"company3",
            "info":"info3",
            "category":"category3",
            "head":"https://p3.music.126.net/6ibAKRMOf__mv62z5inHDw==/18541064581129940.jpg?param=200y200",
            "publish":"publish3"
          },
          {
            "id":"4",
            "title":"标题4",
            "salary":"salary4",
            "company":"company4",
            "info":"info4",
            "category":"category4",
            "head":"https://p4.music.126.net/36QwJqiKfWSbnb5_IPngLg==/18989665323735445.jpg?param=200y200",
            "publish":"publish4"
          }
        ]
      }
    };

    for (dynamic data in result['data']['jobs']){
      Job jobData = Job.fromJson(data);
      jobList.add(jobData);
    }
    return jobList;
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: new Center(
        child: FutureBuilder(
            future: _fetchJobList(),
            builder: (context,AsyncSnapshot snapshot){
              switch(snapshot.connectionState){
                case ConnectionState.none:
                case ConnectionState.waiting:
                  return CircularProgressIndicator();
                default:
                  if(snapshot.hasError)
                    return new Text('Error: ${snapshot.error}');
                  else
                    return _createListView(context, snapshot);
              }
            }
        ),
      ),
    );
  }


  Widget _createListView(BuildContext context,AsyncSnapshot snapshot){
    List<Job> jobList = snapshot.data;
    return ListView.builder(
      key: new PageStorageKey("job-list"),
      itemCount: jobList.length,
      itemBuilder: (BuildContext context, int index){
        return new JobItem(onPressed: () {}, job:jobList[index]);
      },
    );
  }
}