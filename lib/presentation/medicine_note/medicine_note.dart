import 'package:cardinal_quotes_app/core/constants/app_colors.dart';
import 'package:cardinal_quotes_app/core/constants/app_typography.dart';
import 'package:cardinal_quotes_app/core/custom%20widgets/custom_bottomsheet.dart';
import 'package:cardinal_quotes_app/core/custom%20widgets/todo_list_card.dart';
import 'package:cardinal_quotes_app/data/model/medicine_todo_model.dart';
import 'package:flutter/material.dart';

class MedicineNoteScreen extends StatefulWidget {
  const MedicineNoteScreen({super.key});

  @override
  State<MedicineNoteScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<MedicineNoteScreen> {
  List<MedicineTodoModel> todos = MedicineTodoModel.getSoundCardsModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,

      appBar: Navigator.canPop(context)
          ? AppBar(
              backgroundColor: AppColors.scaffoldBackground,
              toolbarHeight: 80,
              titleSpacing: 0,
              leading: Navigator.canPop(context)
                  ? Padding(
                      padding: const EdgeInsets.only(left: 12, top: 30),
                      child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(
                          Icons.arrow_back,
                          color: AppColors.primaryWhite,
                        ),
                      ),
                    )
                  : null,

              title: Navigator.canPop(context)
                  ? Padding(
                      padding: const EdgeInsets.only(left: 5, top: 30),
                      child: Text(
                        'To-dos',
                        style: AppTextSyle.body15semiBold(
                          selectColor: AppColors.primaryWhite,
                        ),
                      ),
                    )
                  : null,
            )
          : AppBar(
              toolbarHeight: 50.0,
              backgroundColor: AppColors.scaffoldBackground,
            ),

      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: todos.length,
                itemBuilder: (context, index) {
                  return TodoListCard(
                    todo: todos[index],
                    onChanged: (val) {
                      setState(() {
                        todos[index].isChecked = val;
                      });
                    },
                  );
                },
              ),
            ),

            Positioned(
              bottom: 30,
              right: 30,
              child: FloatingActionButton(
                onPressed: () {
                  showModalBottomSheet<void>(
                    isScrollControlled: true,
                    context: context,
                    backgroundColor: AppColors.primaryWhite,
                    builder: (context) {
                      return Padding(
                        padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom,
                        ),
                        child: DraggableScrollableSheet(
                          expand: false,
                          initialChildSize: 0.5,
                          minChildSize: 0.3,
                          maxChildSize: 0.9,
                          builder: (context, scrollController) {
                            return SingleChildScrollView(
                              controller: scrollController,
                              child: CustomBottomSheet(),
                            );
                          },
                        ),
                      );
                    },
                  );
                },
                child: Icon(Icons.add_task_outlined),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
