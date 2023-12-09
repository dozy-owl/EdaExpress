import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';


import '../../../help_classes/exports.dart';
import '../../../router/app_router.dart';

@RoutePage()
class ShopingScreen extends StatefulWidget {
  const ShopingScreen({Key? key}) : super(key: key);

  @override
  State<ShopingScreen> createState() => _ShopingScreenState();
}

class _ShopingScreenState extends State<ShopingScreen> {

  int index = 0;

  @override
  Widget build(BuildContext context) {
    //TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      appBar: AppBar(title: const Text('Корзина')),
      body: Center(
        child: ListView(
          children: [
            Text("Общая стоимость: " + MyVariables().basketAllPrice.toString()),
            Container(
              width: double.maxFinite,
              height: MyVariables().basketName.length * 60,
              child: ListView.builder(
                    //physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: MyVariables().basketName.length,
                      itemBuilder: (context,index){
                        return  ListTile(
                          title: Text('${MyVariables().basketName[index][0]}'),
                          //leading: Image.asset(foodImages[index], height: 40, width: 40,),
                          subtitle: Text(
                            MyVariables().basketName[index][1] + MyVariables().basketPrice[index]
                          ),
                          isThreeLine: true,
                          trailing: ElevatedButton(
                            onPressed: () => {
                              MyVariables().basketAllPrice -= int.parse(
                                MyVariables().basketPrice[index].split(" ")[0]
                              ),
                              MyVariables().basketPrice.removeAt(index),
                              MyVariables().basketName.removeAt(index),
                            },
                            child: Icon(Icons.remove),
                          ),
                        );
                      }),
            ),
          ],
        )
      ),
    );
  }
}
