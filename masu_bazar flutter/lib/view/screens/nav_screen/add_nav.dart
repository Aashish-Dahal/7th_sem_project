import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:masu_bazar/Model/khasi.dart';
import 'package:masu_bazar/controller/Provider/cprovider.dart';
import 'package:masu_bazar/view/screens/widgets/appbar.dart';
import 'package:masu_bazar/view/screens/widgets/colors.dart';

import 'package:provider/provider.dart';

class AddNavBarItemButton extends StatefulWidget {
  @override
  _AddNavBarItemButtonState createState() => _AddNavBarItemButtonState();
}

class _AddNavBarItemButtonState extends State<AddNavBarItemButton> {
  final String image = 'assets/images/upload.png';
  @override
  void initState() {
    _currentCategorySelected = _catrgory[0];
    // titleController.text = widget.title;
    // descriptionController.text = widget.shortDescription;
    // weightController.text =
    //     widget.estimatedWeight == null ? "" : widget.estimatedWeight.toString();
    // priceController.text = widget.price == null ? "" : widget.price.toString();
    // colorController.text = widget.color;
    // daatController.text = widget.daat == null ? "" : widget.daat.toString();
    // nameController.text = widget.ownerName;
    // addressController.text = widget.address;
    // primaryContactController.text = widget.primaryContactNo == null
    //     ? ""
    //     : widget.primaryContactNo.toString();
    // secondaryContactController.text = widget.secondaryContactNo == null
    //     ? ""
    //     : widget.secondaryContactNo.toString();
    // ageController.text = widget.age == null ? "" : widget.age.toString();
    //  _image=widget.khasiImage as File;

    super.initState();
  }

  var title,
      desc,
      weight,
      price,
      color,
      daat,
      name,
      address,
      pcontact,
      scontact,
      token,
      age;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  File _pickImage;
  final ImagePicker _picker = ImagePicker();
  var _catrgory = [
    'Select Category',
    'Khasi',
    'Boka',
    'Raga',
    'Kukhura',
    'Birds',
    'Vakal',
    'Anya'
  ];
  var _currentCategorySelected = "";
  Widget _buildCategory() {
    return Container(
      height: 60,
      padding: EdgeInsets.only(left: 20, right: 50, top: 5),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white12,
          border: Border.all(
              color: Colors.black38, style: BorderStyle.solid, width: 1.2),
          borderRadius: BorderRadius.circular(0),
          boxShadow: [
            BoxShadow(color: Colors.white12, offset: Offset(0.0, 0.1)),
          ]),
      child: DropdownButton<String>(
        items: _catrgory.map((String dropDownStringItem) {
          return DropdownMenuItem<String>(
            value: dropDownStringItem,
            child: Text(dropDownStringItem),
          );
        }).toList(),
        onChanged: (String newValueSelected) {
          setState(() {
            this._currentCategorySelected = newValueSelected;
          });
        },
        value: _currentCategorySelected,
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final file = await _picker.getImage(
        source: source, imageQuality: 50, maxHeight: 500, maxWidth: 500);
    setState(() {
      _pickImage = File(file.path);
    });
  }

  Widget _image() {
    return Image(
      image: _pickImage != null
          ? FileImage(File(_pickImage.path))
          : AssetImage(image),
      width: 300,
      height: 200,
    );
  }

  Widget chooseImage() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: [
          Text(
            'Choose Image',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton.icon(
                onPressed: () {
                  takePhoto(ImageSource.camera);
                },
                icon: Icon(Icons.camera),
                label: Text('Camera'),
              ),
              FlatButton.icon(
                onPressed: () {
                  takePhoto(ImageSource.gallery);
                },
                icon: Icon(Icons.image),
                label: Text('Gallery'),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title == null ? "Add" : 'Edit',
            style: TextStyle(color: white),
          ),
        ),
        actions: [
          Search(),
          Padding(padding: EdgeInsets.all(8.0), child: null //Logout(),
              ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onChanged: (value) {
                    title = value;
                  },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2.0)),
                      prefixIcon: Icon(
                        Icons.title,
                        // color: Colors.green,
                      ),
                      labelText: "Title",
                      helperText: "Title can't be empty",
                      hintText: "Title"),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Title is Required';
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                _buildCategory(),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "  Category can't be empty",
                  style: TextStyle(fontSize: 12.0, color: Colors.black54),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onChanged: (value) {
                    desc = value;
                  },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2.0)),
                      prefixIcon: Icon(
                        Icons.description,
                        //  color: Colors.green,
                      ),
                      labelText: "Short Description",
                      helperText: "Short Description can't be empty",
                      hintText: "Short Description"),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Short_Description is Required';
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Center(child: _image()),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: RaisedButton(
                      color: orange,
                      child: Text(
                        'CHOOSE IMAGE',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        showBottomSheet(
                          context: context,
                          builder: (context) => chooseImage(),
                        );
                      }),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onChanged: (value) {
                    weight = value;
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2.0)),
                      prefixIcon: Image(
                        image: AssetImage('assets/images/weight.png'),
                        color: Colors.black54,
                      ),
                      labelText: "Weight",
                      helperText: "Weight can't be empty",
                      hintText: "Weight"),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Weight is Required';
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onChanged: (value) {
                    price = value;
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2.0)),
                      prefixIcon: Image(
                        image: AssetImage('assets/images/price.png'),
                        color: Colors.black54,
                      ),
                      labelText: "Price",
                      helperText: "Price can't be empty",
                      hintText: "Price"),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Price is Required';
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onChanged: (value) {
                    color = value;
                  },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2.0)),
                      prefixIcon: Icon(
                        Icons.color_lens,
                        //  color: Colors.green,
                      ),
                      labelText: "Color",
                      helperText: "Color can't be empty",
                      hintText: "Color"),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Color is Required';
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onChanged: (value) {
                    daat = value;
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2.0)),
                      prefixIcon: Image(
                        image: AssetImage('assets/images/tooth.png'),
                        color: Colors.black54,
                      ),
                      labelText: "Satiyako Daat",
                      helperText: "Satiyako Daat can't be empty",
                      hintText: "Satiyako Daat"),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Satiyaako Daat is Required';
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onChanged: (value) {
                    name = value;
                  },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2.0)),
                      prefixIcon: Image(
                        image: AssetImage('assets/images/name.png'),
                        color: Colors.black54,
                      ),
                      labelText: "Name",
                      helperText: "Name can't be empty",
                      hintText: "Name"),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Name is Required';
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onChanged: (value) {
                    address = value;
                  },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2.0)),
                      prefixIcon: Icon(
                        Icons.location_city,
                        // color: Colors.green,
                      ),
                      labelText: "Address",
                      helperText: "Address can't be empty",
                      hintText: "Address"),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Address is Required';
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onChanged: (value) {
                    pcontact = value;
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2.0)),
                      prefixIcon: Icon(
                        Icons.phone,
                        //   color: Colors.green,
                      ),
                      labelText: "Primary Number",
                      helperText: "Primary Number can't be empty",
                      hintText: "Primary Number"),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Primary Number is Required';
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onChanged: (value) {
                    scontact = value;
                  },
                  validator: null,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2.0)),
                      prefixIcon: Icon(
                        Icons.phone_android,
                        //    color: Colors.green,
                      ),
                      labelText: "Secondary Number",
                      helperText: "Secondary Number is optional",
                      hintText: "Secondary Number"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onChanged: (value) {
                    age = value;
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2.0)),
                      prefixIcon: Icon(
                        Icons.access_time,
                        // color: Colors.green,
                      ),
                      labelText: "Age",
                      helperText: "Age can't be empty",
                      hintText: "Age"),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Age is Required';
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                // widget.id == null
                Center(
                  child: ChangeNotifierProvider<UserDetailsProvider>(
                    create: (context) => UserDetailsProvider(),
                    child: Consumer<UserDetailsProvider>(
                      builder: (context, value, child) => RaisedButton(
                        color: orange,
                        child: Text(
                          "Submit",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          print(token);
                          if (_formKey.currentState.validate()) {
                            var khasiModel = KhasiModel(
                              title: title,
                              category: _currentCategorySelected.toString(),
                              shortDescription: desc,
                              estimatedWeight: int.parse(
                                weight,
                              ),
                              price: int.parse(price),
                              color: color,
                              daat: int.parse(daat),
                              ownerName: name,
                              address: address,
                              primaryContactNo: int.parse(pcontact),
                              secondaryContactNo: int.parse(scontact),
                              age: int.parse(age),
                            );

                            value
                                .khasiListPost(
                                    imagePath: _pickImage,
                                    khasiModel: khasiModel)
                                .then((response) {
                              if (response.statusCode == 201) {
                                var snackbar =
                                    SnackBar(content: Text("success"));
                                Scaffold.of(context).showSnackBar(snackbar);
                              } else if (response.statusCode == 500) {
                                print(response.statusCode);
                                var snackbar = SnackBar(
                                    content: Text("please fill form properly"));
                                Scaffold.of(context).showSnackBar(snackbar);
                              } else {
                                var snackbar =
                                    SnackBar(content: Text("failed!"));
                                Scaffold.of(context).showSnackBar(snackbar);
                              }
                            });
                          }
                        },
                      ),
                    ),
                  ),
                ),
                Center(
                  child: RaisedButton(
                    color: orange,
                    child: Text(
                      "Update",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      setState(() {
                        //  widget._isApiProcess=true;
                        if (_formKey.currentState.validate()) {}
                      });
                    },
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
