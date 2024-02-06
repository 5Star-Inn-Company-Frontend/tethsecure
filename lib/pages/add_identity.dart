import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tethsecure/components/drawer.dart';
import 'package:tethsecure/pages/customer_type.dart';

class AddIdentity extends StatelessWidget {
  const AddIdentity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Image.asset('assets/menu.png'),
        title: const Text('TETHSECURE', style: TextStyle(fontSize: 16.0),),
        backgroundColor: const Color.fromRGBO(1, 28, 122, 1),
        foregroundColor: Colors.white,
      ),
      drawer: const DrawerComp(),
      backgroundColor: const Color.fromRGBO(0, 8, 35, 1),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: SizedBox(
              height: 313,
              width: 342,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(1, 28, 122, 1),
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(height: 1,),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Image.asset(
                            'assets/ques_mark.png'
                          )
                          ),
                          const SizedBox(width: 30,),
                          const Text(
                            'ADD IDENTITY',
                            style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w800),
                          )
                        ],
                      ),
                  
                    
                    
                      Container(
                        width: 301,
                        height: 47,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 5.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.phone_android),
                            hintText: 'SERIAL NUMBER'
                            ),
                          ),
                        ),
                      ),                  
                      
                      // const SizedBox(height: 20,),
                  
                    
                      Container(
                        width: 301,
                        height: 47,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 5.0),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon:  Icon(Icons.code),
                              border: InputBorder.none,
                              hintText: 'ACTIVATION CODE',
                            ),
                          ),
                        ),
                      ),
                                      
                      // const SizedBox(height: 20,),
                      // Button
                      SizedBox(
                        height: 47,
                        width: 301,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            )
                          ),
                          onPressed: (){
                            Timer(
                              const Duration(seconds: 2),
                              () => Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) => const CustomerType())));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/check_mark.png'
                              ),
                              const SizedBox(width: 40,),
                              const Text(
                                'ADD IDENTITY',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(0, 8, 35, 1),
                                  fontWeight: FontWeight.w800
                                ),
                              ),
                            ],
                          )
                        )
                      ),
                    
                      const Row(
                        children: [
                          SizedBox(width: 150,),
                          Text(
                            'Click verify to proceed',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ),
      ),
    );
  }
}