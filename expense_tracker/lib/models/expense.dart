import 'package:uuid/uuid.dart';
// this package helps to generate unique id
// we have to download this 3rd party package by typing -->  "flutter pub add uuid"  :: inside terminal and then import package.

const uuid = Uuid();

enum Category { food, travel, leisure, work }

class Expense {
  Expense({
    required this.title, 
    required this.amount,
    required this.date,
    required this.category,

    // required this.id,
    ////we are not using id inside a constructor because we want it to be dynamic. So we are using id outside the constructor...
  }) : id = uuid.v4();
  // uuid.v4() helps to generate uinque String id

  final String id;
  final String title;
  final double amount;
  final Category category;
  final DateTime date;
}
