import 'package:cardinal_quotes_app/core/constants/app_colors.dart';
import 'package:cardinal_quotes_app/core/constants/app_typography.dart';
import 'package:cardinal_quotes_app/data/model/medicine_todo_model.dart';
import 'package:flutter/material.dart';

class TodoListCard extends StatelessWidget {
  final MedicineTodoModel todo;
  final ValueChanged<bool> onChanged;

  const TodoListCard({super.key, required this.todo, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.amber.shade50,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () => onChanged(!todo.isChecked),
                child: todo.isChecked
                    ? Icon(
                        Icons.check_box_rounded,
                        size: 20,
                        color: AppColors.primary,
                      )
                    : Icon(
                        Icons.check_circle_outline,
                        size: 20,
                        color: AppColors.primary,
                      ),
              ),
              const SizedBox(width: 10),
              Text(
                todo.title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Text(
              todo.isOverdue ? "${todo.time} Overdue" : todo.time,
              style: todo.isOverdue
                  ? AppTextSyle.min12SemiBold(selectColor: AppColors.pureRed)
                  : AppTextSyle.min12SemiBold(selectColor: AppColors.primary),
            ),
          ),
        ],
      ),
    );
  }
}
