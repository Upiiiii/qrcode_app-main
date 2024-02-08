import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class GenerateCodePage extends StatefulWidget {
  const GenerateCodePage({super.key});

  @override
  State<GenerateCodePage> createState() => _GenerateCodePageState();
}

class _GenerateCodePageState extends State<GenerateCodePage> {
  String? qrData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Generate QR Code',
        style: TextStyle(
          fontFamily: 'Poppins'
        ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, "/scan");
            },
            icon: const Icon(
              Icons.qr_code_scanner,
            ),
          ),
        ],
      ),
      body: Padding(padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(  
              hintText: 'Your Link',                          
              filled: true,
              fillColor: Color.fromARGB(255, 187, 227, 252),
              border: OutlineInputBorder(     
                borderRadius: BorderRadius.circular(25),
              ),
            ),          
              onSubmitted: (value) {
                setState(() {
                  qrData = value;
                });
              },
            
          ),
          if (qrData != null) 
          
          
               Container(
                
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                ),
                  
                 child: Container(
                  height: 250,
                  width: 250,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: PrettyQrView.data(data: qrData!),
                  ),
                  
               ),
          
        ],
      ),
      ),
      backgroundColor: Colors.blueAccent,
    );
  }
}
