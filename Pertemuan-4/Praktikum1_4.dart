/* void main() {
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);
  print(list.length);
  print(list[1]);

  list[1] = 1;
  assert(list[1] == 1);
  print(list[1]);
} */

void main() {
  final List<String?> list = List.filled(5, null);
  assert(list.length == 5);

  list[1] = 'Jihan Karunia Putri';
  list[2] = '2241720031';

  print(list.length);
  print(list[1]);
  print(list[2]);
}
