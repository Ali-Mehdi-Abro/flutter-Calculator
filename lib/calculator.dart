// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
class Calculator extends StatefulWidget {
  Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var userInput = '';

  var answer = '';

  final List buttons = [
    'CE',
    '%',
  const  Icon( Icons.backspace_rounded,color: Colors.white),
    '/',
    '7',
    '8',
    '9',
    'x',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    '+/-',
    '0',
    '.',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

  appBar: AppBar(
  title: Text("Calculator"),
  titleTextStyle: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold,),
  centerTitle: true,
  backgroundColor: Colors.blueGrey,
),





 body: Padding(
          padding:const EdgeInsets.all(10),
          
          child: Container(
            
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: <Widget>[
            Container(
              
                 decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 4)),
              child: Column(
                children: [
                   Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.centerRight,
                  child: Text(
                    userInput,
                    style: TextStyle(fontSize: 18, color: const Color.fromARGB(255, 22, 22, 22)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.centerRight,
                 
                  child: Text(
                    answer,
                    style: const TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                ],
              ),
            ),
              SizedBox(height: 20),
              

          
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      CalculatorButton(buttonText: '%', onPressed: (){
                        setState(() {
                          userInput = '%';
                        });
                      }),
                      CalculatorButton(buttonText: 'CE', onPressed: (){
                        setState(() {
                          userInput = 'CE';
                        });
                      }),
                      CalculatorButton(icon: Icons.backspace_rounded, onPressed: (){
                        setState(() {
                          userInput = 'clear';
                        });
                      }),
                      CalculatorButton(buttonText: '/', onPressed: (){
                        setState(() {
                          userInput = '/';
                        });
                      }),
                      ],
                    ),



                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      CalculatorButton(buttonText: '7', onPressed: (){
                        setState(() {
                          userInput = '7';
                        });
                      }),
                      CalculatorButton(buttonText: '8', onPressed: (){
                        setState(() {
                          userInput = '8';
                        });
                      }),
                      CalculatorButton(buttonText: '9', onPressed: (){
                        setState(() {
                          userInput = '9';
                        });
                      }),
                      CalculatorButton(buttonText: 'x', onPressed: (){
                        setState(() {
                          userInput = '*';
                        });
                      }),
                      ],
                    ),
                    
                    
                    
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      CalculatorButton(buttonText: '4', onPressed: (){
                        setState(() {
                          userInput = '4';
                        });
                      }),
                      CalculatorButton(buttonText: '5', onPressed: (){
                        setState(() {
                          userInput = '5';
                        });
                      }),
                      CalculatorButton(buttonText: '6', onPressed: (){
                        setState(() {
                          userInput = '6';
                        });
                      }),
                      CalculatorButton(buttonText: '-', onPressed:  (){
                        setState(() {
                          userInput = '-';
                        });
                      }),
                      ],
                    ),
                    
                    
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      CalculatorButton(buttonText: '1', onPressed: (){
                        setState(() {
                          userInput = '1';
                        });
                      }),
                      CalculatorButton(buttonText: '2', onPressed: (){
                        setState(() {
                          userInput = '2';
                        });
                      }),
                      CalculatorButton(buttonText: '3', onPressed: (){
                        setState(() {
                          userInput = '3';
                        });
                      }),
                      CalculatorButton(buttonText: '+', onPressed: (){
                        setState(() {
                          userInput = '+';
                        });
                      }),
                      ],
                    ),
                    
                    
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      CalculatorButton(buttonText: '+/-', onPressed: (){
                        setState(() {
                          userInput = '+/-';
                        });
                      }),
                      CalculatorButton(buttonText: '0', onPressed: (){
                        setState(() {
                          userInput = '0';
                        });
                      }),
                      CalculatorButton(buttonText: '.', onPressed: (){
                        setState(() {
                          userInput = '-';
                        });
                      }),
                      CalculatorButton(buttonText: '=', onPressed: (){
                        setState(() {
                          userInput = '=';
                        });
                      }),
                      ],
                    ),



                  ],
                ),




                      //       child: GridView.count(
                      //         padding: EdgeInsets.all(10), 
                      //         // childAspectRatio: 1.5,
                      //         mainAxisSpacing: 5, 
                      //         crossAxisSpacing: 5,
                      //         crossAxisCount: 4,
                      //         children: buttons.map((button) {
                      //           return CalculatorButton(
                      //           buttonText: button is String ? button : '', 
                      //          //iconData: button is IconData ? button as IconData : null,
              
                      //           onPressed: () {
                      // // Handle button press
                      //           },
                      //           );
                      //         }).toList(),
                      //       ),
                  // ),
            
                              
                            ),
                        ]
                      )
                    )
                  )
                )
              );
            }
          }
    
class CalculatorButton extends StatelessWidget {
  final String? buttonText;
  final Function onPressed;
  final IconData? icon;
  

  CalculatorButton({this.buttonText, required this.onPressed,  this.icon});

  @override
  Widget build(BuildContext context) {
    double widthh =  MediaQuery.of(context).size.width;
    double heightt =  MediaQuery.of(context).size.height;
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      child:buttonText!= null? Text(
        buttonText!,
        style: TextStyle(fontSize: 25,color: Colors.white),
        textAlign: TextAlign.center,

        
      ):
      Icon(icon,color: Colors.white,),


      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[850],
        minimumSize: Size(widthh*0.25,heightt*0.127),
        padding: EdgeInsets.all(3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        )
      ),
      
    );
  }
}
