main() {
  print("Hashmap test");

  //first method of defining map

  var map_name = {
    'key1': 'value1',
    'key2': 'value2',
    'key3': true,
    'key4': 20,
    'key5': 4.0
  };

  // print("map_name $map_name");
  print(map_name['key3']);

  //addding keys

  map_name['key6'] = "muneeb";

  // print(map_name);

  //second method of defining map

  var map_name2 = Map();

  map_name2['first_key'] = "muneeb";
  map_name2['second_key'] = "waseem";
  map_name2['third_key'] = "waseem";

  print(map_name2);

  print(map_name2.isEmpty);
  print(map_name2.isNotEmpty);
  print(map_name2.keys);
  print(map_name2.length);
  print(map_name2.containsKey('first_key'));
  print(map_name2.containsValue('muneeb'));
  print(map_name2.remove('third_key'));

  print(map_name2);
}
