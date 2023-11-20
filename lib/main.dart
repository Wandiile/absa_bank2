import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
var widgets = [
  Container(
    decoration: const BoxDecoration(
      boxShadow: [BoxShadow(color: Colors.white, blurStyle: BlurStyle.outer,
      blurRadius: 0.8,
      offset: Offset(0, 8))]
    ),
    child: ListTile(
      trailing: Text('LogOut',
      style: TextStyle(color: Colors.grey),
      ),
    ),
  ),
   SizedBox(height: 10,),
  Container(
     decoration: const BoxDecoration(
      boxShadow: [BoxShadow(color: Colors.white, blurStyle: BlurStyle.outer,
      blurRadius: 0.8,
      offset: Offset(0, 8))]
    ),
    child: ListTile(
      leading: Icon(Icons.account_circle,
      ),
      title: Text('Wandile Nkovu',
      style: TextStyle(color: Colors.grey),),
      subtitle: Text('Personal Bank Account',
      style: TextStyle(color: Colors.grey),),
      trailing: Icon(Icons.arrow_forward_ios,
      color: Colors.grey,
    ),

  ),),
  Container(
    decoration: const BoxDecoration(
      boxShadow: [BoxShadow(color: Colors.white, blurStyle: BlurStyle.outer,
      blurRadius: 0.8,
      offset: Offset(0, 8))]
    ),
    child: ListView(
      scrollDirection: Axis.vertical,
      children: [
        Column(children: [
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(Icons.account_balance,
                  color: Colors.red,),
                  Text('Pay',
                  style: TextStyle(color: Colors.grey),),

                ],

              ),
              SizedBox(width: 5,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: const[
                 Icon(Icons.qr_code_scanner_rounded,
                 color: Colors.red,),
                 Text('Qr/n payments',
                 style:TextStyle(color:Colors.grey)),
                 
                
                ],
              ),
              SizedBox(width: 5,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.compare_rounded,
                  color: Colors.red),
                  Text('Transfer',
                  style: TextStyle(color: Colors.grey)),
                ],
              ),
              SizedBox(width: 5,),
              Column(
              mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.send_to_mobile_outlined,
                  color:Colors.red,),
                  Text('CashSend',
                  style: TextStyle(color:Colors.grey)),

                ],  
              ),
              SizedBox(width: 5,),

            ],
          )
        ],

        )
      ],
      
    )
  )

];


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       body: Column(children: [
        Container(
          height: 210,
          child: ListView.builder(
            itemCount: widgets.length,
            itemBuilder: ((context, index)
            {
              return widgets[index];
            }),
        )),
       
       ]),
       
      ),
    );
  }
}