import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'food_item_image.dart';
import 'constants.dart';
import 'round_icon_button.dart';
import 'table_page.dart';

class FoodItemPage extends StatefulWidget {
  @override
  State<FoodItemPage> createState() => _FoodItemPageState();
}

class _FoodItemPageState extends State<FoodItemPage> {
  int item1Count = 1;
  int item2Count = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFDEBE),
        appBar: AppBar(
          backgroundColor: const Color(0xFFFF6E00),
          centerTitle: true,
          title: const Text('FOOD ORDERING APPLICATION'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                'SELECT THE NUMBER OF FOOD ITEMS',
                style: upperText(),
              ),
              Expanded(
                flex: 3,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: food_item_image(
                        foodImage: const AssetImage('images/foodItem1.png'),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: kInactiveColor,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: Icons.keyboard_arrow_up_outlined,
                              onPressed: () {
                                setState(() {
                                  item1Count++;
                                });
                              },
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            Text(
                              item1Count.toString(),
                              style: const TextStyle(
                                  fontSize: 70.0,
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xFFFF4F00)),
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            RoundIconButton(
                              icon: Icons.keyboard_arrow_down_outlined,
                              onPressed: () {
                                setState(
                                  () {
                                    if (item1Count == 0) {
                                      item1Count++;
                                    }
                                    item1Count--;
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: food_item_image(
                        foodImage: const AssetImage('images/foodItem2.png'),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: kInactiveColor,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: Icons.keyboard_arrow_up_outlined,
                              onPressed: () {
                                setState(() {
                                  item2Count++;
                                });
                              },
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            Text(
                              item2Count.toString(),
                              style: const TextStyle(
                                  fontSize: 70.0,
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xFFFF4F00)),
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            RoundIconButton(
                              icon: Icons.keyboard_arrow_down_outlined,
                              onPressed: () {
                                setState(
                                  () {
                                    if (item2Count == 0) {
                                      item2Count++;
                                    }
                                    item2Count--;
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                // 'PLACE ORDER button
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    const SizedBox(width: 8.0),
                    Expanded(
                      child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: const Color(0xFFFDA93D),
                            padding: EdgeInsets.only(bottom: 12.0)),
                        child: const Text(
                          'PLACE ORDER',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 25.0),
                        ),
                        onPressed: () {
                          setState(() {
                            Alert(
                              context: context,
                              title: "YOUR ORDER IS SUCCESSFULLY PLACED",
                              desc:
                                  "Please be kind enough to stay until food served. Thank you!!!",
                              image: Image.asset("images/orderPlaced.png"),
                            ).show();
                            brain.setItems(item1Count, item2Count);
                            brain.printOutputs();
                          });
                        },
                      ),
                    ),
                    const SizedBox(width: 8.0)
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}
