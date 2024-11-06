void main() {
  int a = 10, b = 20;
  // using tupple assigment
  a = a ^ b;
  b = a ^ b;
  a = a ^ b;
  print("After swapping:a=$a b=$b");
}
