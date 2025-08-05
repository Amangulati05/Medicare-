import 'package:flutter/material.dart';

class MedicineDetailsScreen extends StatefulWidget {
  @override
  _MedicineDetailsScreenState createState() => _MedicineDetailsScreenState();
}

class _MedicineDetailsScreenState extends State<MedicineDetailsScreen> {
  int selectedDays = 7;
  bool beforeMeal = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF34134E)),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Medicine Details',
          style: TextStyle(
            color: Color(0xFF34134E),
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Scada',
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Medicine Summary Card
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFEF5DA8), Color(0xFF6C5CE7)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Icon(
                          Icons.medication,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Aspirin',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: 'Scada',
                              ),
                            ),
                            Text(
                              '100mg • Tablet',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white70,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.schedule, color: Colors.white, size: 16),
                      SizedBox(width: 5),
                      Text(
                        'First dose: 8:00 AM',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

            // Duration Section
            Text(
              'Treatment Duration',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF34134E),
                fontFamily: 'Scada',
              ),
            ),
            SizedBox(height: 15),

            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => selectedDays = 7),
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: selectedDays == 7 ? Color(0xFF6C5CE7) : Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: selectedDays == 7 ? Color(0xFF6C5CE7) : Color(0xFFE0E0E0),
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            '7',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: selectedDays == 7 ? Colors.white : Color(0xFF34134E),
                              fontFamily: 'Scada',
                            ),
                          ),
                          Text(
                            'Days',
                            style: TextStyle(
                              fontSize: 14,
                              color: selectedDays == 7 ? Colors.white70 : Color(0xFF666666),
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => selectedDays = 14),
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: selectedDays == 14 ? Color(0xFF6C5CE7) : Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: selectedDays == 14 ? Color(0xFF6C5CE7) : Color(0xFFE0E0E0),
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            '14',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: selectedDays == 14 ? Colors.white : Color(0xFF34134E),
                              fontFamily: 'Scada',
                            ),
                          ),
                          Text(
                            'Days',
                            style: TextStyle(
                              fontSize: 14,
                              color: selectedDays == 14 ? Colors.white70 : Color(0xFF666666),
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => selectedDays = 30),
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: selectedDays == 30 ? Color(0xFF6C5CE7) : Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: selectedDays == 30 ? Color(0xFF6C5CE7) : Color(0xFFE0E0E0),
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            '30',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: selectedDays == 30 ? Colors.white : Color(0xFF34134E),
                              fontFamily: 'Scada',
                            ),
                          ),
                          Text(
                            'Days',
                            style: TextStyle(
                              fontSize: 14,
                              color: selectedDays == 30 ? Colors.white70 : Color(0xFF666666),
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 30),

            // Meal Instructions
            Text(
              'Meal Instructions',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF34134E),
                fontFamily: 'Scada',
              ),
            ),
            SizedBox(height: 15),

            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => beforeMeal = true),
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: beforeMeal ? Color(0xFFEF5DA8) : Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: beforeMeal ? Color(0xFFEF5DA8) : Color(0xFFE0E0E0),
                        ),
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.restaurant,
                            size: 32,
                            color: beforeMeal ? Colors.white : Color(0xFF666666),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Before Meal',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: beforeMeal ? Colors.white : Color(0xFF34134E),
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => beforeMeal = false),
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: !beforeMeal ? Color(0xFFEF5DA8) : Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: !beforeMeal ? Color(0xFFEF5DA8) : Color(0xFFE0E0E0),
                        ),
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.restaurant_menu,
                            size: 32,
                            color: !beforeMeal ? Colors.white : Color(0xFF666666),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'After Meal',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: !beforeMeal ? Colors.white : Color(0xFF34134E),
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 30),

            // Additional Notes
            Text(
              'Additional Notes',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF34134E),
                fontFamily: 'Scada',
              ),
            ),
            SizedBox(height: 15),

            Container(
              width: double.infinity,
              height: 100,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFFF8F9FA),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Color(0xFFE0E0E0)),
              ),
              child: TextField(
                maxLines: null,
                decoration: InputDecoration(
                  hintText: 'Add any special instructions or notes...',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: Color(0xFF666666),
                    fontFamily: 'Roboto',
                  ),
                ),
                style: TextStyle(
                  color: Color(0xFF34134E),
                  fontFamily: 'Roboto',
                ),
              ),
            ),

            SizedBox(height: 40),

            // Complete Setup Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Color(0xFF00CEC9).withOpacity(0.1),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Icon(
                                Icons.check,
                                size: 40,
                                color: Color(0xFF00CEC9),
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Medicine Added Successfully!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF34134E),
                                fontFamily: 'Scada',
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Your medication reminder has been set up. You\'ll receive notifications at the scheduled times.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF666666),
                                fontFamily: 'Roboto',
                              ),
                            ),
                            SizedBox(height: 20),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  Navigator.pushNamedAndRemoveUntil(
                                      context,
                                      '/home',
                                          (route) => false
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF6C5CE7),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: Text(
                                  'Go to Home',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF6C5CE7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  elevation: 0,
                ),
                child: Text(
                  'Complete Setup',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontFamily: 'Scada',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}