import 'package:cooking_food/database/db_helper.dart';

class User_Modal {
  int? userId;
  String email;
  String password;
 // int? mobilNo;

  User_Modal({required this.email, required this.password,this.userId});

  factory User_Modal.fromMap(Map<String, dynamic> map) {
    return User_Modal(
      userId: map[MyDBHelper().User_Colum_Id],
        email: map[MyDBHelper().User_Colum_Email],
        password: map[MyDBHelper().User_Colum_Password],
      //  mobilNo: map[MyDBHelper().User_Colum_MobilNo]
        );
  }
  Map<String, dynamic> toMap(){
    return {
      MyDBHelper().User_Colum_Id: userId,
      MyDBHelper().User_Colum_Email: email,
      MyDBHelper().User_Colum_Password: password,
     // MyDBHelper().User_Colum_MobilNo: mobilNo

    };
  }
}
