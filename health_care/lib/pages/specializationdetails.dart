import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:health_care/pages/home.dart';
import 'package:health_care/pages/hospitaldetails.dart';
import 'package:health_care/pages/profile.dart';
import 'package:health_care/widgets/widgets_support.dart';
import 'package:intl/intl.dart';

class SpecializationDetails extends StatefulWidget {
  const SpecializationDetails({super.key});

  @override
  State<SpecializationDetails> createState() => _SpecializationDetailsState();
}




// Color.fromARGB(255, 255, 255, 255) white
// Color.fromARGB(255, 236, 236, 244) dark white
// Color.fromARGB(255, 250, 249, 254) grey white
// Color.fromARGB(255, 242, 242, 242) light grey white
// Color.fromARGB(255, 240, 243, 248) light blue
// Color.fromARGB(255, 236, 242, 254) light blue button
// Color.fromARGB(255, 215, 227, 239) light blue button 2
// Color.fromARGB(255, 211, 227, 253) blue
// Color.fromARGB(255, 11, 87, 207) dark blue
// Color.fromARGB(255, 22, 88, 196) dark blue text
// Color.fromARGB(255, 76, 150, 99) green






class _SpecializationDetailsState extends State<SpecializationDetails> {
  int _selectedIndex = 0;

  String? selectedDepartment;
  String? selectedDoctor;
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  // Departments and corresponding doctors
  Map<String, List<String>> departmentDoctorMap = {
    'Lilavati': ['Dr. Smith', 'Dr. Adams'],
    'K.E.M Hispital': ['Dr. Johnson', 'Dr. Davis'],
    'JJ Hospital': ['Dr. Williams', 'Dr. Brown'],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        child: Column(
          children: [
            Container(
              child: AppBarMain(),
            ),
            Container(
              child: Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      AppHospitalMain(),
                      AppHospitalNavigatorMain(),
                      Container(
                        child: IndexedStack(
                          index: _selectedIndex,
                          children: [
                            // Different widgets for different tabs
                            OverviewWidget(),
                            SpecializationWidget(),
                            AppointmentWidget(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget AppBarMain() {
    return Container(
      color: Color.fromARGB(255, 240, 243, 248),
      padding: EdgeInsets.only(top: 40, right: 20, bottom: 20),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
            child: Container(
              margin: EdgeInsets.only(left: 20),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(10)),
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
          Spacer(),
          Container(
            child: Text(
              'Specialization',
              style: AppWidget.boldSize25TextStyle(),
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.black87, borderRadius: BorderRadius.circular(10)),
            child: Icon(
              Icons.exit_to_app,
              color: Colors.white,
              size: 20,
            ),
          )
        ],
      ),
    );
  }

  Widget AppHospitalMain() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, bottom: 20),
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 155,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/hospital1.png'), // Your image
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      // color: Colors.red,
                      width: MediaQuery.of(context).size.width / 1.3,
                      child: Text(
                        'Cardiology',
                        style: AppWidget.semiBoldSize20HeightTextStyle(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      // color: Colors.red,
                      width: MediaQuery.of(context).size.width / 1.3,
                      child: Text(
                        'This is a details about cardiology in short that why i am write it in short okay so this is cardiology',
                        style: AppWidget.semiBoldSize18TextStyle(),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }

  // Modify the navigation function to set the index
  Widget AppHospitalNavigatorMain() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = 0; // Show Overview
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 20, bottom: 20),
                      child: Text(
                        'Overview',
                        style: _selectedIndex == 0
                            ? AppWidget.semiBoldSize18GreenTextStyle()
                            : AppWidget.semiBoldSize18TextStyle(),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = 1; // Show About
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 20, bottom: 20),
                      child: Text(
                        'Hospital',
                        style: _selectedIndex == 1
                            ? AppWidget.semiBoldSize18GreenTextStyle()
                            : AppWidget.semiBoldSize18TextStyle(),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = 2; // Show Specialization
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 20, bottom: 20),
                      child: Text(
                        'Appointment',
                        style: _selectedIndex == 2
                            ? AppWidget.semiBoldSize18GreenTextStyle()
                            : AppWidget.semiBoldSize18TextStyle(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 2,
            width: MediaQuery.of(context).size.width,
            color: Colors.black12,
          ),
        ],
      ),
    );
  }

  // Create different widgets for each section
  Widget OverviewWidget() {
    return Container(
      child: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
              child: Row(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'About:',
                            style: AppWidget.semiBoldSize20HeightTextStyle(),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.2,
                          child: Text(
                              'This is about of this hospital this can be anything writen here so that why i am writting this much big paragraph here okey so take care.',
                              style: AppWidget.semiBoldSize18TextStyle()),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 2,
              width: MediaQuery.of(context).size.width,
              color: Colors.black12,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Review summary',
                      style: AppWidget.semiBoldSize20HeightTextStyle(),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                          child: Column(
                        children: [
                          Container(
                            child: Text(
                              '3.7',
                              style: AppWidget.boldSize25TextStyle(),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.black54,
                                    size: 20,
                                  ),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.black54,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Text(
                              '(287)',
                              style: AppWidget.semiBoldSize18TextStyle(),
                            ),
                          ),
                        ],
                      )),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                          // color: Colors.red,
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'FeedBack',
                              style: AppWidget.semiBoldSize18TextStyle(),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.black54,
                                    size: 30,
                                  ),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.black54,
                                    size: 30,
                                  ),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.black54,
                                    size: 30,
                                  ),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.black54,
                                    size: 30,
                                  ),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.black54,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
              child: Row(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'Health Tips:',
                            style: AppWidget.semiBoldSize20HeightTextStyle(),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.2,
                          child: Text('- How to Take Care of Your Heart',
                              style: AppWidget.semiBoldSize18TextStyle()),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.2,
                          child: Text('- Understanding Stroke Prevention',
                              style: AppWidget.semiBoldSize18TextStyle()),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.2,
                          child: Text('- How to Take Care of Your Hear',
                              style: AppWidget.semiBoldSize18TextStyle()),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 2,
              width: MediaQuery.of(context).size.width,
              color: Colors.black12,
            ),
          ],
        ),
      ),
    );
  }

  Widget SpecializationWidget() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                'Recommended Hospital:',
                style: AppWidget.semiBoldSize20HeightTextStyle(),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 500,
              child: ListView.builder(
                itemCount: 10, // Number of list items
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HospitalDetail()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color:    Color.fromARGB(255, 242, 242, 242),
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  // color: Colors.red,
                                  width: MediaQuery.of(context).size.width / 1.4,
                                  child: Text(
                                    'Hospital Name',
                                    style: AppWidget.semiBoldSize18TextStyle(),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Spacer(),
                                Container(child: Icon(Icons.location_on)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            // color: Colors.red,
                            width: MediaQuery.of(context).size.width / 1.4,
                            child: Text(
                              'This is the address of the hospital the are you seeing now this address of nearby hospital of you okay',
                              style: AppWidget.semiBoldSize16TextStyle(),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                           SizedBox(
                            height: 10,
                          ),
                          Container(
                            // color: Colors.red,
                            width: MediaQuery.of(context).size.width / 1.4,
                            child: Text(
                              'Package Around - RS.1000',
                              style: AppWidget.semiBoldSize16TextStyle(),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Text(
                              'Famouse Doctors:',
                              style: AppWidget.semiBoldSize18TextStyle(),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              child: Row(
                            children: [
                              Container(
                                child: Text(
                                  '- Dr. Sarah Johnson',
                                  style: AppWidget.semiBoldSize18TextStyle(),
                                ),
                              ),
                              Spacer(),
                              Container(
                                child: Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 20,
                                ),
                              ),
                              Container(
                                child: Text(
                                  '4.7/5',
                                  style: AppWidget.semiBoldSize18TextStyle(),
                                ),
                              )
                            ],
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              child: Row(
                            children: [
                              Container(
                                child: Text(
                                  '- Dr. Sarah Johnson',
                                  style: AppWidget.semiBoldSize18TextStyle(),
                                ),
                              ),
                              Spacer(),
                              Container(
                                child: Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 20,
                                ),
                              ),
                              Container(
                                child: Text(
                                  '4.7/5',
                                  style: AppWidget.semiBoldSize18TextStyle(),
                                ),
                              )
                            ],
                          )),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget SpecializationCardWidget() {
    // Now this widget is not using because of that list but you need use this then
    return Container(
      decoration: BoxDecoration(
          color:  Color.fromARGB(255, 240, 243, 248), borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              'Cardiology',
              style: AppWidget.semiBoldSize18TextStyle(),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
              'Famouse Doctors:',
              style: AppWidget.semiBoldSize18TextStyle(),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              child: Row(
            children: [
              Container(
                child: Text(
                  '- Dr. Sarah Johnson',
                  style: AppWidget.semiBoldSize18TextStyle(),
                ),
              ),
              Spacer(),
              Container(
                child: Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 20,
                ),
              ),
              Container(
                child: Text(
                  '4.7/5',
                  style: AppWidget.semiBoldSize18TextStyle(),
                ),
              )
            ],
          )),
          SizedBox(
            height: 10,
          ),
          Container(
              child: Row(
            children: [
              Container(
                child: Text(
                  '- Dr. Sarah Johnson',
                  style: AppWidget.semiBoldSize18TextStyle(),
                ),
              ),
              Spacer(),
              Container(
                child: Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 20,
                ),
              ),
              Container(
                child: Text(
                  '4.7/5',
                  style: AppWidget.semiBoldSize18TextStyle(),
                ),
              )
            ],
          )),
        ],
      ),
    );
  }

  Widget AppointmentWidget() {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Name Input Field
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                ),
              ),
              SizedBox(height: 15),

              // Date Input Field
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  readOnly: true,
                  decoration: InputDecoration(
                    labelText: 'Select Date',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.calendar_today), // Calendar Icon
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                  onTap: () async {
                    DateTime? picked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2101),
                    );
                    if (picked != null) {
                      setState(() {
                        selectedDate = picked;
                      });
                    }
                  },
                  controller: TextEditingController(
                    text: selectedDate != null
                        ? DateFormat('yyyy-MM-dd').format(selectedDate!)
                        : '',
                  ),
                ),
              ),
              SizedBox(height: 15),

              // Time Input Field
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  readOnly: true,
                  decoration: InputDecoration(
                    labelText: 'Select Time',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.access_time), // Clock Icon
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                  onTap: () async {
                    TimeOfDay? picked = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                    );
                    if (picked != null) {
                      setState(() {
                        selectedTime = picked;
                      });
                    }
                  },
                  controller: TextEditingController(
                    text: selectedTime != null
                        ? selectedTime!.format(context)
                        : '',
                  ),
                ),
              ),
              SizedBox(height: 15),

              // Department Selection Dropdown
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: 'Select Hospital',
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                  items: departmentDoctorMap.keys
                      .map((department) => DropdownMenuItem<String>(
                            value: department,
                            child: Text(department),
                          ))
                      .toList(),
                  onChanged: (department) {
                    setState(() {
                      selectedDepartment = department;
                      selectedDoctor = null; // Reset doctor selection
                    });
                  },
                  value: selectedDepartment,
                ),
              ),
              SizedBox(height: 15),

              // Doctor Selection Dropdown
              if (selectedDepartment != null)
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: 'Select Doctor',
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                    items: departmentDoctorMap[selectedDepartment]!
                        .map((doctor) => DropdownMenuItem<String>(
                              value: doctor,
                              child: Text(doctor),
                            ))
                        .toList(),
                    onChanged: (doctor) {
                      setState(() {
                        selectedDoctor = doctor;
                      });
                    },
                    value: selectedDoctor,
                  ),
                ),
              SizedBox(height: 25),

              // Send Request Button
              Center(
                child: Container(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle Send Request action
                    },
                    child: Text('Send Request', style:AppWidget.lightSemiBoldSize18WhiteTextStyle(),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 11, 87, 207),
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
