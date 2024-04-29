int count = 0;
void SayHi() {
  print("${++count}:hello world");
}

Future waitfor(int a) {
  return Future.delayed(Duration(seconds: a), () {
    print("waited for $a second");
  });
}

void main() async {
  SayHi();
  await waitfor(5);
  SayHi();
}
