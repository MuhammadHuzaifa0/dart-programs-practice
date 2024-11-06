void main() {
  Map<String, String> Myobject1 = {
    'name': 'Devin',
    'hairColor': 'brown',
  };
  var MyObject2 = {...Myobject1, 'hairColor': 'Red'};
  print(MyObject2);
}
