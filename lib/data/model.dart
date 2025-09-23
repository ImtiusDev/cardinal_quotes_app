// // use of copyWith method in class

// class User {
//   final String name;
//   final int age;
//   User({required this.name, required this.age});

//   User copyWith(String? name, int? age) {
//     return User(
//       name: name ?? this.name, 
//       age: age ?? this.age
//     );
//   }
// }


// void main(){

//   User user1 = User(name: 'habib', age: 22);
//   print('name: ${user1.name}, ${user1.age}');

//   User user2 = user1.copyWith( 'Habib to Rofique',);

//   print('name: ${user2.name}, ${user2.age}');
// }