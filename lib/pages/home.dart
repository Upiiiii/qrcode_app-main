import 'package:flutter/material.dart';
import 'package:qr_code_scanner_and_generator_tutorial/pages/generate_code_page.dart';
import 'package:qr_code_scanner_and_generator_tutorial/pages/scan_code_page.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         centerTitle: true,
        title: const Text('QR Code App', 
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Comfortaa',
          ),
        ),
        backgroundColor: Colors.purple,
      ),

    
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
                Colors.white,
                Color.fromRGBO(122, 181, 250, 1),
              ],
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [  
            
               Container(
                  height: 260.0,
                  width: 300.0,
                    child: Center(
                      child: Image.asset('assets/images/home-image.png'),
                    ),
                ),
              
              SizedBox(height: 30,),
        
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ultricies, odio nec ',
                textAlign: TextAlign.center,
                style: TextStyle(
                 fontFamily: 'Poppins',
                 fontSize: 12,
                 
                ),
                ),
              
        
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => ScanCodePage(),
                      ),
                      );
                  }, 
                  
                  child: const Text('Scan Code'),
                  ),
        
                  const SizedBox(width: 18,),
        
                ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => GenerateCodePage(),
                  ),
                  );
              }, 
              
              child: const Text('QR Generator'),
              ) 
                ],
        
              ),
        
            ],
          ),
        ),
      ),
      // backgroundColor: Colors.white,
    );
  }
}