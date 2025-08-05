import 'package:flutter/material.dart';

class TimePickerScreen extends StatefulWidget {
  @override
  _TimePickerScreenState createState() => _TimePickerScreenState();
}

class _TimePickerScreenState extends State<TimePickerScreen> {
  bool isAM = true;
  String selectedHour = "";
  String selectedMinute = "00";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              // Back button
              Positioned(
                top: 23,
                left: 23,
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back, size: 25, color: Color(0xFF34134E)),
                  padding: EdgeInsets.zero,
                  constraints: BoxConstraints(
                    minWidth: 25,
                    minHeight: 25,
                  ),
                ),
              ),

              // Clock icon with background
              Positioned(
                top: 61,
                left: 37,
                child: Container(
                  width: 82,
                  height: 80,
                  child: Stack(
                    children: [
                      Container(
                        width: 78,
                        height: 78,
                        decoration: BoxDecoration(
                          color: Color(0xB0FFE6FF),
                          borderRadius: BorderRadius.circular(39),
                        ),
                      ),
                      Positioned(
                        top: 4,
                        left: 5,
                        child: Container(
                          width: 77,
                          height: 77,
                          decoration: BoxDecoration(
                            color: Color(0xFFEF5DA8).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(38.5),
                          ),
                          child: Icon(
                            Icons.access_time,
                            size: 40,
                            color: Color(0xFFEF5DA8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Title text
              Positioned(
                top: 146,
                left: 35,
                child: Container(
                  width: 290,
                  child: Text(
                    'When do you need to take the first dose?',
                    style: TextStyle(
                      fontFamily: 'Scada',
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF34134E),
                      fontSize: 23,
                    ),
                  ),
                ),
              ),

              // Main content panel
              Positioned(
                top: 218,
                left: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 218,
                  decoration: BoxDecoration(
                    color: Color(0x80FFFFFF),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Stack(
                    children: [
                      // Time picker section
                      Positioned(
                        top: 82,
                        left: 16,
                        child: Container(
                          width: MediaQuery.of(context).size.width - 32,
                          height: 116,
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Hour input
                              Column(
                                children: [
                                  Container(
                                    width: 96,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: Color(0xFFEF5DA8),
                                        width: 2,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '|',
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xFFEF5DA8),
                                          fontSize: 56,
                                          height: 1.33,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 7),
                                  Text(
                                    'Hour',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF35134F),
                                      fontSize: 12,
                                      letterSpacing: 0.4,
                                      height: 1.33,
                                    ),
                                  ),
                                ],
                              ),

                              // Colon separator
                              Container(
                                width: 20,
                                height: 80,
                                margin: EdgeInsets.symmetric(horizontal: 8),
                                child: Center(
                                  child: Text(
                                    ':',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xFF202124),
                                      fontSize: 56,
                                      height: 1.14,
                                    ),
                                  ),
                                ),
                              ),

                              // Minute input
                              Column(
                                children: [
                                  Container(
                                    width: 96,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: Color(0x14212121),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '00',
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xDE000000),
                                          fontSize: 56,
                                          height: 1.14,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 7),
                                  Text(
                                    'Minute',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF35134F),
                                      fontSize: 12,
                                      letterSpacing: 0.4,
                                      height: 1.33,
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(width: 12),

                              // AM/PM selector
                              Container(
                                width: 52,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Color(0xB0FCCAE4),
                                    width: 1,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () => setState(() => isAM = true),
                                      child: Container(
                                        width: 52,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: isAM ? Color(0xFFF2E7FE) : Colors.transparent,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(8),
                                            topRight: Radius.circular(8),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'AM',
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w500,
                                              color: isAM ? Color(0xFFEF5DA8) : Color(0xFF35134F),
                                              fontSize: 14,
                                              letterSpacing: 1.25,
                                              height: 1.14,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 52,
                                      height: 1,
                                      color: Color(0xB0FCCAE4),
                                    ),
                                    GestureDetector(
                                      onTap: () => setState(() => isAM = false),
                                      child: Container(
                                        width: 52,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: !isAM ? Color(0xFFF2E7FE) : Colors.transparent,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(8),
                                            bottomRight: Radius.circular(8),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'PM',
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w500,
                                              color: !isAM ? Color(0xFFEF5DA8) : Color(0xFF35134F),
                                              fontSize: 14,
                                              letterSpacing: 1.25,
                                              height: 1.14,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Action buttons
                      Positioned(
                        top: 223,
                        left: 16,
                        child: Container(
                          width: MediaQuery.of(context).size.width - 32,
                          padding: EdgeInsets.only(left: 24, right: 8),
                          child: Row(
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                child: Icon(
                                  Icons.access_time,
                                  color: Color(0xFF666666),
                                  size: 24,
                                ),
                              ),
                              Expanded(child: Container()),
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text(
                                  'CANCEL',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF34134E),
                                    fontSize: 14,
                                    letterSpacing: 1.25,
                                    height: 1.14,
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  minimumSize: Size(77, 36),
                                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                                ),
                              ),
                              SizedBox(width: 8),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'OK',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF34134E),
                                    fontSize: 14,
                                    letterSpacing: 1.25,
                                    height: 1.14,
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  minimumSize: Size(64, 36),
                                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Next button
                      Positioned(
                        bottom: 100,
                        left: 52,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width - 104,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/medicine-details');
                            },
                            child: Text(
                              'Next',
                              style: TextStyle(
                                fontFamily: 'Scada',
                                fontWeight: FontWeight.normal,
                                color: Color(0xFFFFFEFE),
                                fontSize: 20,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF6C5CE7),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              elevation: 4,
                              shadowColor: Color(0x40000000),
                            ),
                          ),
                        ),
                      ),
                    ],
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