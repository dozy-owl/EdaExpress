import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ЕдаExpress',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Оплата заказа'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
              "Оплата заказа",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  decoration: TextDecoration.none
              )
          ),
          backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(32),
          children: [
            buildCardsList(),
            buildPaymentAmountText(),
            buildCardsDataInput(),
            buildButtonPay(),
          ],
        ),
      ),
    );
  }

  Widget buildCardsList() {
    return SizedBox(
      height: 55.5,
      child: Image.asset("assets/images/allCards.png"),
      /*Row(
        children: [
          Expanded(child: Image.asset("assets/images/visa.jpg")),
          Expanded(child: Image.asset("assets/images/mastercard.jpg")),
          //https://vsememy.ru/image/wp-content/uploads/2023/03/1636161719_19-papik-pro-p-visa-logotip-foto-20.png"),
          //https://tx-shop.ru/image/catalog/masterkard.jpg"),
          Expanded(child: Image.asset("assets/images/world.jpg"))
          //https://www.zaks.ru/f/2022/April/Mir_Logo.jpg"),
        ],*/
      );
  }

  Widget buildPaymentAmountText(){
    final paymentAmount = 0;
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          Text(
              "Сумма оплаты:",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  decoration: TextDecoration.none
              )
          ),
          const SizedBox(height: 4),
          Text(
              '$paymentAmount руб',
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  decoration: TextDecoration.none
              )
          )
        ]
    );
  }

  Widget buildCardsDataInput(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12),
        Text(
          "Номер карты",
          style: TextStyle(
              fontSize: 17,
              color: Colors.black,
              decoration: TextDecoration.none

          )
        ),
        const SizedBox(height: 8),
        const SizedBox(
          height: 40.0,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.only(bottom: 1.0, left: 10.0),
              //hintText: 'Enter a search term',
            ),
          ),
        ),
        const SizedBox(height: 12),
        Text(
            "Имя на карте",
            style: TextStyle(
                fontSize: 17,
                color: Colors.black,
                decoration: TextDecoration.none
            )
        ),
        const SizedBox(height: 8),
        const SizedBox(
          height: 40.0,
          child: TextField(
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.only(bottom: 1.0, left: 10.0),
            //hintText: 'Enter a search term',
            ),
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: Text(
                  "Срок действия",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      decoration: TextDecoration.none
                  )
              ),
            ),
            Expanded(
                child: Text(
                    "CVC/CVV",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        decoration: TextDecoration.none
                    )
                ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        const SizedBox(
          height: 40.0,
          child: Row(
            children: <Widget>[
              Expanded(
                //flex: 3,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "ММ / ГГ",
                    contentPadding: EdgeInsets.only(bottom: 1.0, left: 10.0),
                  ),
                ),
              ),
              Expanded(
                //flex: 4,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.only(bottom: 1.0, left: 10.0),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24.0),
      ],
    );
  }

  void onPressed(){}

  Widget buildButtonPay(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(),
                backgroundColor: Colors.blueAccent,
              ),
              onPressed: onPressed,
              child: Text(
                  "Оплатить",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      decoration: TextDecoration.none
                  )
              )
          ),
      ],
    );

  }
}







































import 'dart:math';

import 'package:flutter/material.dart';


void main() =>  runApp(
    new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
            body: new Center(
              child: new MyBody(),
            )
        )
    )
);

class MyBody extends StatefulWidget {
  @override
  createState() => new MyBodyState();
}

class MyBodyState extends State<MyBody> {
  final List _array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Оплата заказа",
            style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                decoration: TextDecoration.none
            )
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(32),
          children: [
            buildBrandsList(),
          ],
        ),
      ),
    );
  }

  Widget buildBrandsList(){
    return ListView.builder(itemBuilder: (context, i){
      //print('num $i : нечетное = ${i.isOdd}');

      if(i.isOdd) return new Divider();

      final int index = i ~/ 2;

      //print('index $index');
      //print('length ${_array.length}');

      if (index >= _array.length) _array.addAll([index, index + 1, index + 2]);

      return SizedBox(
        height: 70.0,
        child: ListTile(
          title: Text('${_array[index]}'),
          leading: Image.asset("assets/images/eda.png"),
          subtitle: Text('A sufficiently long subtitle warrants three lines.'),
          trailing: Icon(Icons.more_vert),
          isThreeLine: true,
        ),
      );
    };),
  }
}
