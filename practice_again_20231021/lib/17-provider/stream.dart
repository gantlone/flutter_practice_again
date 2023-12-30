class DateTimeModel {
  late String counter;
  DateTimeModel({required this.counter});
}

class CounterStream {
  Stream<DateTimeModel> getDateTime() {
    return Stream<DateTimeModel>.periodic(Duration(seconds: 1), (value) {
      var now = DateTime.now();
      return DateTimeModel(counter: now.toString());
    });
  }
}
