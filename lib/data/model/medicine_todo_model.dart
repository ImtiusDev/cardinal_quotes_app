class MedicineTodoModel {
  final String title;
  final String time;
  bool isChecked;
  bool isOverdue;

  MedicineTodoModel({
    required this.title,
    required this.time,
    this.isChecked = false,
    this.isOverdue = false,
  });


  static List<MedicineTodoModel> getSoundCardsModel() {
    List<MedicineTodoModel> getMedicineTodoModel = [];

    getMedicineTodoModel.add(
      MedicineTodoModel(
       title: "Viglimate",
      time: "Everyday At 4.00 Pm",
      isChecked: true,
      ),
    );
    getMedicineTodoModel.add(
      MedicineTodoModel(
       title: "Napa",
      time: "Everyday At 4.00 Pm",
      isOverdue: true,
      ),
    );
    getMedicineTodoModel.add(
      MedicineTodoModel(
       title: "Napa", time: "Everyday At 6.00 Pm"
      ),
    );
    getMedicineTodoModel.add(
      MedicineTodoModel(
       title: "Viglimate",
      time: "Everyday At 4.00 Pm",
      isChecked: true,
      ),
    );
    getMedicineTodoModel.add(
      MedicineTodoModel(
       title: "Viglimate",
      time: "Everyday At 4.00 Pm",
      isChecked: true,
      ),
    );

    



    return getMedicineTodoModel;
  }

}
