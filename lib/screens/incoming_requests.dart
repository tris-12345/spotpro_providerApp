import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.workSansTextTheme(Theme.of(context).textTheme)),
      home: Scaffold(

        body: const NotificationTile(),
      ),
    );
  }
}

class NotificationTile extends StatefulWidget {
  const NotificationTile({super.key});

  @override
  NotificationTileState createState() => NotificationTileState();
}
class NotificationTileState extends State<NotificationTile> {
  List <Request> requestList = [
    const Request(userID: 'Aarsha', job: 'climbing 10 COCONUT TREES', status: 'accept', time: '12/12/22',locality: 'Mavoor'),
    const Request(userID: 'Faiza', job: 'painting', status: 'accept', time: '13/12/22',locality:'state library'),
  ];

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          title: const Text('Notifications'),
          backgroundColor: Colors.deepPurple,

        ),
        body: ListView.builder(
          itemCount: requestList.length,
          itemBuilder: (context, index) {
            final requestTile = requestList[index];
            return
              Card(
                child: ExpansionTile(
                  collapsedBackgroundColor: Colors.white60,
                  textColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  title: Text(requestTile.userID),
                  subtitle: Text(requestTile.locality),
                  trailing: Text(requestTile.time),
                  children: <Widget>[

                    ListTile(title:
                    Align(
                        alignment: Alignment.center,child :Text(requestTile.job)) ,
                    ),
                    Row(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(100,10,10,10),
                            child: OutlinedButton(

                              child: Text(
                                "Accept",
                                style: TextStyle(fontSize: 15.0,color: Colors.white,),

                              ),

                              style: OutlinedButton.styleFrom(

                                  backgroundColor: Colors.deepPurple,

                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(15)))),


                              onPressed: () {

                              },
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.fromLTRB(0,10,10,10),
                            child: OutlinedButton(
                              child: Text(
                                "Reject",
                                style: TextStyle(fontSize: 15.0,color: Colors.black,),
                              ),

                              style: ButtonStyle(

                                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                              ),

                              onPressed: () {},
                            ),
                          ),


                        ]),


                  ],
                ),

              );
          },
        ),
      );
}




class Request{
  final String userID;
  final String job;
  final String status;
  final String time;
  final String locality;
  const Request({
    required this.userID,
    required this.job,
    required this.status,
    required this.time,
    required this.locality,
  });
}
