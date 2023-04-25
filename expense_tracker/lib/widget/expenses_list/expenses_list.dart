import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
  });

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Text(expenses[index].title),
    );
    
    // ListView.builder--> .builder helps to built list only when they are visible or about to visible
  }
}
