import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/PhoneNumber.dart';

class ListPhoneNumber extends StatefulWidget {
  const ListPhoneNumber({Key? key}) : super(key: key);

  @override
  _ListPhoneNumberState createState() => _ListPhoneNumberState();
}

class _ListPhoneNumberState extends State<ListPhoneNumber> {
  List<PhoneNumber> data = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = [
      PhoneNumber(
        1,
        "081333999222",
        "Ikhwan Koto",
      ),
      PhoneNumber(
        2,
        "081333999222",
        "Pake Arrayid",
      ),
      PhoneNumber(
        3,
        "081333999222",
        "Ryan Kimo",
      ),
      PhoneNumber(
        4,
        "081333999222",
        "Arif Mahran",
      ),
      PhoneNumber(
        5,
        "081333999222",
        "Nurrahman Hado",
      ),
      PhoneNumber(
        6,
        "081333999222",
        "Ade Nuri",
      ),
      PhoneNumber(
        7,
        "081333999222",
        "Fitriani Chairi",
      ),
      PhoneNumber(
        8,
        "081333999222",
        "Elsa Aprilio",
      ),
      PhoneNumber(
        9,
        "081333999222",
        "Putri Coti",
      ),
      PhoneNumber(
        10,
        "081333999222",
        "Saputra Enriko",
      ),
    ];
  }

  showAlertDialog(BuildContext context, int idx) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text("Cancel"),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = TextButton(
      child: Text("Yes"),
      onPressed: () {
        setState(() {
          data.removeAt(idx);
          Navigator.pop(context);
        });
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Delete data"),
      content: Text("Would you like to delete this item ?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("List phone"),
      // ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    showAlertDialog(context, index);
                  },
                  child: Card(
                    child: Container(
                      margin: EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: 20),
                              width: 20,
                              height: 20,
                              child: Icon(Icons.people)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(data[index].name),
                              Text(data[index].phoneNumber)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
