import 'package:flutter/material.dart';
import 'package:food_ordering_app/constants.dart';
import 'package:food_ordering_app/food_item_page.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'window_card.dart';
import 'bottom_button.dart';
import 'app_brain.dart';

enum Table { table0, table1, table2, table3, table4, table5 }

Brain brain = Brain();

class TablePage extends StatefulWidget {
  //Dynamic part
  @override
  State<TablePage> createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  int tableNumber = 0;
  Table selectedTable = Table.table0;

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
                'CHOOSE YOUR TABLE NUMBER',
                style: upperText(),
              ),
              Expanded(
                flex: 3,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: WindowCard(
                        onPress: () {
                          setState(() {
                            selectedTable = Table.table1;
                            tableNumber = 1;
                          });
                        },
                        colour: selectedTable == Table.table1
                            ? kActiveColor
                            : kInactiveColor,
                        cardImage: const AssetImage('images/table1.JPG'),
                      ),
                    ),
                    Expanded(
                      child: WindowCard(
                        onPress: () {
                          setState(() {
                            selectedTable = Table.table2;
                            tableNumber = 2;
                          });
                        },
                        colour: selectedTable == Table.table2
                            ? kActiveColor
                            : kInactiveColor,
                        cardImage: const AssetImage('images/table2.jpg'),
                      ),
                    ),
                    //#Expanded(child: child),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Row(children: <Widget>[
                  const Expanded(
                    flex: 1,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: 2,
                    child: WindowCard(
                      onPress: () {
                        setState(() {
                          selectedTable = Table.table3;
                          tableNumber = 3;
                        });
                      },
                      colour: selectedTable == Table.table3
                          ? kActiveColor
                          : kInactiveColor,
                      cardImage: const AssetImage('images/table3.jpg'),
                    ),
                  ),
                  const Expanded(
                    flex: 1,
                    child: SizedBox(),
                  ),
                ]),
              ),
              Expanded(
                flex: 3,
                child: Row(children: <Widget>[
                  Expanded(
                    child: WindowCard(
                      onPress: () {
                        setState(() {
                          selectedTable = Table.table4;
                          tableNumber = 4;
                        });
                      },
                      colour: selectedTable == Table.table4
                          ? kActiveColor
                          : kInactiveColor,
                      cardImage: const AssetImage('images/table4.jpg'),
                    ),
                  ),
                  Expanded(
                    child: WindowCard(
                      onPress: () {
                        setState(() {
                          selectedTable = Table.table5;
                          tableNumber = 5;
                        });
                      },
                      colour: selectedTable == Table.table5
                          ? kActiveColor
                          : kInactiveColor,
                      cardImage: const AssetImage('images/table5.jpg'),
                    ),
                  ),
                ]),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    const SizedBox(
                      width: 8.0,
                    ),
                    Expanded(
                      child: BottomButton(
                        btnText: Text(
                          'Send Order to this table',
                          style: bottomButtonText(),
                        ),
                        onTap: () {
                          if (tableNumber == 0) {
                            Alert(
                              context: context,
                              type: AlertType.error,
                              title: "ALERT",
                              desc: "PLEASE CHOOSE A TABLE.",
                              buttons: [
                                DialogButton(
                                  onPressed: () => Navigator.pop(context),
                                  width: 120,
                                  child: const Text(
                                    "Cancel",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                )
                              ],
                            ).show();
                          } else {
                            brain.setTableNumber(tableNumber);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return FoodItemPage();
                                },
                              ),
                            );
                          }
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
