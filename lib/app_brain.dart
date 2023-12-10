class Brain {
  int _tableNumber = 0;
  int _itemOne = 0;
  int _itemTwo = 0;

  void setTableNumber(int tblNo) {
    _tableNumber = tblNo;
  }

  void setItems(int itm1, int itm2) {
    _itemOne = itm1;
    _itemTwo = itm2;
  }

  void printOutputs() {
    print(_tableNumber);
    print(_itemOne);
    print(_itemTwo);
  }

  int getTableNumber() {
    return _tableNumber;
  }
}
