import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/A01Page_ui.dart';
import 'package:flutter_speed_ui_app/views/B01Page_ui.dart';
import 'package:flutter_speed_ui_app/views/C01Page_ui.dart';
import 'package:flutter_speed_ui_app/views/D01Page_ui.dart';
import 'package:flutter_speed_ui_app/views/E01Page_ui.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2E004E),
       
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0), 
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 40.0,
                ),
                
                Image.asset(
                  'assets/images/img6.png', 
                  height: 250.0,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  height: 40.0,
                ),
                
                
                ElevatedButton(
                  onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const A01PageUI())
                  );  
                  },
                  child: Text(
                    'Go to A Page',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      60.0, 
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0), 
                    ),
                    backgroundColor: const Color(0xFFF48FB1), 
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),

                
                ElevatedButton(
                  onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const B01pageui())
                  );  
                  },
                  child: Text(
                    'Go to B Page',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      60.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    backgroundColor: const Color(0xFF1E40AF), 
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),

                
                ElevatedButton(
                  onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const C01PageUI())
                  );  
                  },
                  child: Text(
                    'Go to C Page',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      60.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    backgroundColor: const Color(0xFF00C853), 
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                
               ElevatedButton(
                  onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const D01PageUI())
                  );  
                  },
                  child: Text(
                    'Go to D Page',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      60.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    backgroundColor: const Color(0xFF26C6DA),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                
               
                ElevatedButton(
                  onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const E01PageUI())
                  );  
                  },
                  child: Text(
                    'Go to E Page',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      60.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    backgroundColor: const Color(0xFFFF9800), 
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}