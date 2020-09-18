import 'package:flutter/material.dart';
import 'package:learning_app/subjects/important_doc.dart';
import 'package:learning_app/subjects/subject_doc.dart';

class HomeImportant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: importants.length,
      itemBuilder: (BuildContext context, int index) {
        Important important = importants[index];
        return GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => HomeImportanttab(
                  //important: important,
                  ),
            ),
          ),
          child: Container(
            width: 180,
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(0.0, 2.0),
                  blurRadius: 9.0,
                ),
              ],
              color: Colors.red,
            ),
            child: Stack(
              children: <Widget>[
                Image(
                  image: AssetImage(important.imgUrl),
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class HomeImportanttab extends StatelessWidget {
  final Important important;

  const HomeImportanttab({Key key, this.important}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: subjects.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text('Important Topics'),
          bottom: TabBar(
            isScrollable: true,
            tabs: subjects.map((Subject subject) {
              return Tab(
                text: subject.name,
                //icon: Icon(Icons.menu),
              );
            }).toList(),
          ),
        ),
        body: TabBarView(
          children: subjects.map(
            (Subject subject) {
              return Padding(
                padding: EdgeInsets.all(10),
                child: HomeimportantGrid(
                  subject.lname,
                  2,
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}

class HomeimportantGrid extends StatelessWidget {
  final List lname;
  final num count;
  HomeimportantGrid(this.lname, this.count);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      crossAxisCount: count,
      childAspectRatio: (1.1),
      children: lname
          .map(
            (data) => GestureDetector(
              onTap: () {
                //getGridViewSelectedItem(context, data.name);
              },
              child: Wrap(
                children: [
                  Container(
                    width: 150,
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 9.0,
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Stack(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                             
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  image: AssetImage(data.imgUrl),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                data.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                data.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
