import 'package:flutter/material.dart';
import 'package:heart_calculator/widgets/heart_button.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  static const operations = ['+','-','*','/','%'];
  String input = '';
  double result = 0;
  String output = '';
  String operation = '';
  @override
  void initState() {
    super.initState();
    input = '';
    result = 0;
    output = '';
    operation = '';
  }

  void calculate() {
    final isOp = output!='';
     if(isOp){
switch (operation) {
      case '+':
        setState(() {
          result = result + double.parse(output);
        });
      case '-':
        setState(() {
          result = result - double.parse(output);
        });
      case '*':
        setState(() {
          result = result * double.parse(output);
        });
      case '/':
        setState(() {
          result = result / double.parse(output);
        });
        case '%':
        setState(() {
          result =result%double.parse(output);
        });
    }
     }
          else{
            setState(() {
              input = input.substring(0, input.length - 1)+'+'; operation='+';
            });}}

          
    
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 247, 240, 255),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Container(
                  height: MediaQuery.of(context).size.width / 6,
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(
                        color: const Color.fromARGB(255, 77, 20, 163), width: 2),
                        
                  ),
                  child: Text(
                    input,
                    style:  TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 12, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Divider(color: Color.fromARGB(255, 77, 20, 163),
              thickness: 2,),
              Padding(padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Row(
                children: [
                  GestureDetector(
                    onTap: () {
                    setState(() {
                       input = '';
    result = 0;
    output = '';
    operation = '';
                    });
                    },
                    child: HeartButton(buttonName: 'AC'),
                  ),
                  GestureDetector(
                    onTap: () {
                 if(input!=''){
                        if(!operations.contains(input[input.length-1])){
                         if(output!=''){

                         setState(() {
                            input = input.substring(0, input.length - output.length) ;
                          output = '-'+output;
                          input=input+output;
                         });
                         }
                         else{
setState(() {
                          input = '-'+input;
                          
});
                         }
                        }
                 }
                    },
                    child: HeartButton(buttonName: '+/-'),
                  ),
                  GestureDetector(
                    onTap: () {
                     if(input.isNotEmpty){
                       setState(() {
                     if(input.isNotEmpty){
                         if (operation == '') {
                          operation = '%';
                          result = double.parse(input);
                          input = input + '%';
                        } else {
                          calculate();
                          input = result.toString() + '%';
                          output = '';
                          operation = '%';
                        }
                     }
                      });
                     }
                    },
                    child: HeartButton(buttonName: '%'),
                  ),
                  GestureDetector(
                    onTap: () {
                       setState(() {
                        if (operation == '') {
                          operation = '/';
                          result = double.parse(input);
                          input = input + '/';
                        } else {
                          calculate();
                          input = result.toString() + '/';
                          output = '';
                          operation = '/';
                        }
                      });
                    },
                    child: HeartButton(buttonName: '/'),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        input = input + '7';
                        if (operation != '') {
                          output = output + '7';
                        }
                      });
                    },
                    child: HeartButton(buttonName: '7'),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        input = input + '8';
                        if (operation != '') {
                          output = output + '8';
                        }
                      });
                    },
                    child: HeartButton(buttonName: '8'),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        input = input + '9';
                        if (operation != '') {
                          output = output + '9';
                        }
                      });
                    },
                    child: HeartButton(buttonName: '9'),
                  ),
                  GestureDetector(
                    onTap: () {
                     if(input.isNotEmpty){
                       setState(() {
                        if (operation == '') {
                          operation = '*';
                          result = double.parse(input);
                          input = input + '*';
                        } else {
                          calculate();
                          input = result.toString() + '*';
                          output = '';
                          operation = '*';
                        }
                      });
                     }
                    },
                    child: HeartButton(buttonName: '*'),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        input = input + '4';
                        if (operation != '') {
                          output = output + '4';
                        }
                      });
                    },
                    child: HeartButton(buttonName: '4'),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        input = input + '5';
                        if (operation != '') {
                          output = output + '5';
                        }
                      });
                    },
                    child: HeartButton(buttonName: '5'),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        input = input + '6';
                        if (operation != '') {
                          output = output + '6';
                        }
                      });
                    },
                    child: HeartButton(buttonName: '6'),
                  ),
                  GestureDetector(
                    onTap: () {
                     if(input.isNotEmpty){
                       setState(() {
                        if (operation == '') {
                          operation = '-';
                          result = double.parse(input);
                          input = input + '-';
                        } else {
                          calculate();
                          input = result.toString() + '-';
                          output = '';
                          operation = '-';
                        }
                      });
                     }
                    },
                    child: HeartButton(buttonName: '-'),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        input = input + '1';
                        if (operation != '') {
                          output = output + '1';
                        }
                      });
                    },
                    child: HeartButton(buttonName: '1'),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        input = input + '2';
                        if (operation != '') {
                          output = output + '2';
                        }
                      });
                    },
                    child: HeartButton(buttonName: '2'),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        input = input + '3';
                        if (operation != '') {
                          output = output + '3';
                        }
                      });
                    },
                    child: HeartButton(buttonName: '3'),
                  ),
                  GestureDetector(
                    onTap: () {
                    if(input.isNotEmpty){
                        setState(() {
                        if (operation == '') {
                          operation = '+';
                          result = double.parse(input);
                          input = input + '+';
                        } else {
                          calculate();
                          input = result.toString() + '+';
                          output = '';
                          operation = '+';
                        }
                      });
                    }
                    },
                    child: HeartButton(buttonName: '+'),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      if(input.isNotEmpty){
                        if(operations.contains(input[input.length-1])){
                          setState(() {
                            operation='';
               input = input.substring(0, input.length - 1);
                          });
                        }
                        else{
                          setState(() {
                            if(output!=''){
                          output = output.substring(0, output.length - 1);
                        }
                         input = input.substring(0, input.length - 1);
                          });
                           
                        }
                        
                      }
                     
                    },
                    child: HeartButton(buttonName: '<-'),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        input = input + '0';
                        if (operation != '') {
                          output = output + '0';
                        }
                      });
                    },
                    child: HeartButton(buttonName: '0'),
                  ),
                  GestureDetector(
                    onTap: () {
                      if(input.isNotEmpty){
                        setState(() {
                          if(!operations.contains(input[input.length-1])){
                            if(output.isNotEmpty){
                              output = output+'.';
                            }
                            input=input+'.';
                          }
                        });
                      }
                    },
                    child: HeartButton(buttonName: '.'),
                  ),
                  GestureDetector(
                    onTap: () {
                    if(input.isNotEmpty){
                      if(output.isNotEmpty){
setState((){
calculate();
                          input = result.toString() ;
                          output = '';
                          operation = '';
                      });
                      }
                        
                    }
                    },
                    child: HeartButton(buttonName: '='),
                  ),
                ],
              ),],),)
            ],
          ),
        ),
      ),
    );
  }
}
