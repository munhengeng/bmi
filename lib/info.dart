import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  final String bmi;
  final String imagePath;
  const Info({super.key, required this.bmi, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Body Mass Index Info', style: TextStyle(fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.person)),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            children: [
              Text('Body mass index (BMI) is a value derived from the mass (weight) and height of a person.\n\nThe BMI is defined as the body mass divided by the square of the body height, and is expressed in units of kg/m\u00B2, resulting from mass in kilograms (kg) and height in metres (m).'),
              SizedBox(height: 15,),
              Table(
                border: TableBorder.all(color: Colors.orange),
                children: [
                  TableRow(
                    children: [
                      TableCell(child: Text('BMI Value', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),)),
                      TableCell(child: Text('Classification', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),)),
                    ]
                  ),
                  TableRow(
                    children: [
                      TableCell(child: Text('Below 18.5', textAlign: TextAlign.center, )),
                      TableCell(child: Text('Underweight', textAlign: TextAlign.center, )),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(child: Text('18.5 - 24.9', textAlign: TextAlign.center, )),
                      TableCell(child: Text('Normal', textAlign: TextAlign.center, )),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(child: Text('Above 25', textAlign: TextAlign.center, )),
                      TableCell(child: Text('Overweight', textAlign: TextAlign.center, )),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20,),

              bmi==''? Text('Please enter your weight and height.'):
              Text('You Body Mass Index (BMI) is : $bmi',),

              Expanded(child: SizedBox()),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Go back!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
