import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 60,
        horizontal: 20,
      ),
      child: Column(
        children: [
          Text(expense.title),
          const SizedBox(height: 4),
          Row(children: [
            Text('Rs. ${expense.amount.toStringAsFixed(2)}'),
            // 12.3443 => 12.34
            const Spacer(),
            Row(children: [
              const Icon(Icons.alarm),
              const SizedBox(height: 8),
              Text(expense.date.toString()),
            ]),
          ]),
        ],
      ),
    ));
  }
}