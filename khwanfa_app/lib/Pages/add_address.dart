import 'package:flutter/material.dart';

class add_address extends StatefulWidget {
  @override
  _add_addressState createState() => _add_addressState();
}
//create class Model
class Provices_Item {
  const Provices_Item(
      this.name,
//      this.icon,
      );
  final String name;
//  final Icon icon;
}
class Districts_Item{
  const Districts_Item(this.name,);
  final String name;
}
class postcode_Item{
  const postcode_Item(
      this.postcode,
      );
  final int postcode;
}

class _add_addressState extends State<add_address> {
  Provices_Item selectedProvices;
  Districts_Item selectedDistricts;
  postcode_Item selectedpostcode;
  List<Provices_Item> Provices = <Provices_Item>[
    const Provices_Item('อุดรธานี',),
    const Provices_Item('หนองคาย',),
    const Provices_Item('ขอนแก่น',),
//    const Provices_Item('นครราชสีมา',),
  ];
  List<Districts_Item> Districts = <Districts_Item>[
    const Districts_Item('อำเภอเมือง',),
    const Districts_Item('ประจักษ์ศิลปาคม',),
    const Districts_Item('โนนสะอาด',),
    const Districts_Item('นครราชสีมา',),
  ];
  List<postcode_Item> Postcode = <postcode_Item>[
    const postcode_Item(41330,),
    const postcode_Item(41000,),
    const postcode_Item(41040,),
    const postcode_Item(41001,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: EdgeInsets.only(left: 30.0),
          child: Text(
            'เพิ่มที่อยู่การจัดส่ง',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      body: Card(
        margin: EdgeInsets.only(left: 15.0, right: 10.0, top: 10.0,bottom: 15.0),
        child: Container(
          margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0,bottom: 10.0),
          height: 300,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.9,
//                  margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                    child: TextField(
                      decoration: InputDecoration(
//                    border: OutlineInputBorder(
//                      borderRadius: BorderRadius.circular(10),
//                    ),
                        hintText: 'ชื่อ - นามสกุล',
                        contentPadding: EdgeInsets.all(10),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    child: TextField(
                      decoration: InputDecoration(
//                    border: OutlineInputBorder(
//                      borderRadius: BorderRadius.circular(10),
//                    ),
                        hintText: 'ที่อยู่',
                        contentPadding: EdgeInsets.all(10),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
//                width: MediaQuery.of(context).size.width,
//                margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                child: Center(
                  child: DropdownButton<Provices_Item>(
                    hint:  Text("จังหวัด"),
                    value: selectedProvices,
                    onChanged: (Provices_Item Value) {
                      setState(() {
                        selectedProvices = Value;
                      });
                    },

                    items: Provices.map((Provices_Item user) {
                      return  DropdownMenuItem<Provices_Item>(
                        value: user,
                        child: Center(
                          child: Container(
                            width: MediaQuery.of(context).size.width*0.8,
                            child: Text(
                              user.name,
                              style:  TextStyle(color: Colors.black,),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              Container(
//                width: MediaQuery.of(context).size.width,
//                margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                child: Center(
                  child: DropdownButton<Districts_Item>(
                    hint:  Text("เขต/อำเภอ"),
                    value: selectedDistricts,
                    onChanged: (Districts_Item Value) {
                      setState(() {
                        selectedDistricts = Value;
                      });
                    },

                    items: Districts.map((Districts_Item user) {
                      return  DropdownMenuItem<Districts_Item>(
                        value: user,
                        child: Center(
                          child: Container(
                            width: MediaQuery.of(context).size.width*0.8,
                            child: Text(
                              user.name,
                              style:  TextStyle(color: Colors.black,),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),

              Container(
//                width: MediaQuery.of(context).size.width,
//                margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                child: Center(
                  child: DropdownButton<postcode_Item>(
                    hint:  Text("รหัสไปรษณีย์"),
                    value: selectedpostcode,
                    onChanged: (postcode_Item Value) {
                      setState(() {
                        selectedpostcode = Value;
                      });
                    },

                    items: Postcode.map((postcode_Item user) {
                      return  DropdownMenuItem<postcode_Item>(
                        value: user,
                        child: Center(
                          child: Container(
                            width: MediaQuery.of(context).size.width*0.8,
                            child: Text(
                              user.postcode.toString(),
                              style:  TextStyle(color: Colors.black,),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  child: TextField(
                    decoration: InputDecoration(
//                    border: OutlineInputBorder(
//                      borderRadius: BorderRadius.circular(10),
//                    ),
                      hintText: 'หมายเลขโทรศัพท์',
                      contentPadding: EdgeInsets.all(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 10.0,right: 10.0,top: 5.0,),
                width: MediaQuery.of(context).size.width*0.9,
                child: RaisedButton(
                  color: Color(0xFF162A49),
                  child: Text('บันทึก'),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  onPressed: () {
//                  Navigator.push(
//                    context,
//                    MaterialPageRoute(builder: (context) => list_address()),
//                  );
                  },
                ),
              ),
            ],
          ),
          color: Colors.white,
        )
    );
  }
}
