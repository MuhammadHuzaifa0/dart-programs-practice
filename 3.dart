void main() {
  List oldList = [10, 20, 30, 40];

  List newList = [
    for (int i = 0; i < oldList.length; i++) ' item ${i + 1} :${oldList[i]} '
  ];
  print("New List:");
  for (var item in newList) {
    print(item);
  }
}
