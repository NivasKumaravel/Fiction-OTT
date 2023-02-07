import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:fictionott/Fiction%20OTT/navigation%20bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../color.dart';

class personal extends StatefulWidget {
  const personal({Key? key}) : super(key: key);

  @override
  State<personal> createState() => _personalState();
}

class _personalState extends State<personal> {
  int _value = 0;
  final _formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController age = TextEditingController();

  late SingleValueDropDownController _cnt;
  String selGender = "";

  @override
  void initState() {
    _cnt = SingleValueDropDownController();


    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black,
                  Colors.blue.shade900,
                ]),
          ),
          padding: EdgeInsets.only(left: 15, top: 20, right: 15),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: ListView(
              children: [
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                            border: Border.all(width: 4, color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  color: Colors.black.withOpacity(0.1))
                            ],
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/picback.png"),
                            )),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 4, color: Colors.white),
                            color: Colors.cyan,
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      TextFormField(
                        controller: name,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color: Colors.cyan),
                          ),
                          hintText: "First Name",
                          hintStyle: TextStyle(color: Colors.grey),
                          labelText: "First Name",
                          labelStyle:
                              TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        style: TextStyle(color: Colors.white, fontSize: 18),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'[a-z A-Z]+$').hasMatch(value)) {
                            return "Enter correct name";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        controller: lastname,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color: Colors.cyan),
                          ),
                          hintText: "Last Name",
                          hintStyle: TextStyle(color: Colors.grey),
                          labelText: "Last Name",
                          labelStyle:
                              TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        style: TextStyle(color: Colors.white, fontSize: 18),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'[a-z A-Z]+$').hasMatch(value)) {
                            return "Enter correct name";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        controller: number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color: Colors.cyan),
                          ),
                          hintText: "Enter mobile number",
                          hintStyle: TextStyle(color: Colors.grey),
                          labelText: "Enter mobile number",
                          labelStyle:
                              TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.start,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(13),
                        ],
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)')
                                  .hasMatch(value)) {
                            return "Enter correct number";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        controller: email,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color: Colors.cyan),
                          ),
                          hintText: "Enter email address",
                          hintStyle: TextStyle(color: Colors.grey),
                          labelText: "Enter email address",
                          labelStyle:
                              TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'[\w-]+@([\w-]+[\w]{2,4})')
                                  .hasMatch(value)) {
                            return "Enter valid email address";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Age",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 70,
                            width: 100,
                            child: TextFormField(
                              controller: age,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "0",
                                hintStyle: LST,
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 2, color: Colors.cyan),
                                ),
                              ),
                              style: TextStyle(fontSize: 18, color: Colors.white),
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Age restricted above +18";
                                } else if (int.tryParse(value)! < 18) {
                                  return 'This aint\'t for kids under 18';
                                } else {
                                  return null;
                                }
                              },
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(2),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Gender',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Male",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Theme(
                                  data: Theme.of(context).copyWith(
                                      unselectedWidgetColor: Colors.white),
                                  child: Radio(
                                    value: 1,
                                    groupValue: _value,
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value!;
                                        setState(() {
                                          selGender = "Male";
                                        });
                                      });
                                    },
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "Female",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Theme(
                                  data: Theme.of(context).copyWith(
                                      unselectedWidgetColor: Colors.white),
                                  child: Radio(
                                      value: 2,
                                      groupValue: _value,
                                      onChanged: (value) {
                                        setState(() {
                                          _value = value!;
                                          setState(() {
                                            selGender = "Female";
                                          });
                                        });
                                      }),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "Others",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Theme(
                                  data: Theme.of(context).copyWith(
                                      unselectedWidgetColor: Colors.white),
                                  child: Radio(
                                      value: 3,
                                      groupValue: _value,
                                      onChanged: (value) {
                                        setState(() {
                                          _value = value!;
                                          setState(() {
                                            selGender = "Other";
                                          });
                                        });
                                      }),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Text(
                            "Choose City",
                            style: BT,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            child: DropDownTextField(
                              validator: (value) {
                                if (value!.isEmpty ||
                                    !RegExp(r'[a-z A-Z]+$').hasMatch(value)) {
                                  return "Enter correct name";
                                } else {
                                  return null;
                                }
                              },
                              controller: _cnt,
                              clearOption: true,
                              enableSearch: true,
                              dropDownItemCount: 6,
                              searchDecoration: const InputDecoration(
                                  hintText: "Enter City",
                                  hintStyle: TextStyle(
                                      color: Colors.cyan,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300)),
                              dropDownList: [
                                DropDownValueModel(
                                    name: 'Banglore', value: "value1"),
                                DropDownValueModel(
                                    name: 'Coimbatore', value: "value2"),
                                DropDownValueModel(
                                    name: 'Salem', value: "value3"),
                                DropDownValueModel(name: 'Goa', value: "value4"),
                                DropDownValueModel(
                                    name: 'Chennai', value: "value5"),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 150,
                      ),
                      Container(
                        height: 60,
                        width: 200,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "CONTINUE",
                                  style: BT,
                                ),
                              ],
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {

                                Navigator.push(context, MaterialPageRoute(builder: (context)=>nav()));
                              }

                            }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// showModalBottomSheet(
// context: context,
// builder: (BuildContext context) {
// return SizedBox(
// height: 400,
// child: Center(
// child: Column(
// children: [
// TextField(
// controller: name,
// ),
// TextField(
// controller: lastname,
// ),
// TextField(
// controller: age,
// ),
// TextField(
// controller: number,
// ),
// TextField(
// controller: email,
// ),
// Text("City :" + _cnt.dropDownValue!.name.toString()),
// Text("Gender :" + selGender.toString()),
//
// ],
// )),
// );
// },
// );