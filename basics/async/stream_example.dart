//Примеры использьвания стримов Stream
import 'dart:async';

void main() async {
  late StreamSubscription subscription;
  subscription = numbersStream([1, 2, 3, 4, 5, 6, 7, 8, 9]).listen((event) {
    print(event);
    if (event == 14) {
      subscription.cancel();
    }
  });
}

Stream numbersStream(List nums) async* {
  for (var num in nums) {
    await Future.delayed(Duration(seconds: 1));
    yield num * 2;
  }
}
