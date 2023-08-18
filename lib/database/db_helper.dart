import 'dart:io';
import 'dart:math';

import 'package:cooking_food/modal/user_modal.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class MyDBHelper {
  var User_Table = "UserTable";
  var User_Colum_Id = "UserId";
  var User_Colum_Email = "email";
  var User_Colum_Password = "Password";
  // var User_Colum_MobilNo = "mobilNo";

  Future<Database> openDB() async {
    var mDirectory = await getApplicationDocumentsDirectory();
    await mDirectory.create(recursive: true);
    var dbpath = "$mDirectory/maindb.db";

    return await openDatabase(
      dbpath,
      version: 1,
      onCreate: (db, version) {
        var createQuery =
            "create table $User_Table ($User_Colum_Id integer primary key autoincrement, $User_Colum_Email text unique, $User_Colum_Password text)";
        db.execute(createQuery);
      },
    );
  }

  Future<bool> createUser(User_Modal user_modal) async {
    var db = await openDB();
    if (await checkIfEmailAlreadyExists(user_modal.email)) {
      return false;
    } else {
      var check = await db.insert(User_Table, user_modal.toMap());
      return check > 0;
    }
  }

  Future<bool> checkIfEmailAlreadyExists(String email) async {
    var db = await openDB();
    var check = await db
        .query(User_Table, where: "$User_Colum_Email= ?", whereArgs: [email]);

    return check.isNotEmpty;
  }

  Future<bool> userAuthotication(
      {required String email, required String password}) async {
    var db = await openDB();
    var check = await db.query(User_Table,
        where: "$User_Colum_Email = ? and $User_Colum_Password = ?",
        whereArgs: [email, password]);
    return check.isNotEmpty;
  }

  Future<bool> forget_pass(String email) async {
    return await checkIfEmailAlreadyExists(email);
  }

  Future<bool> resend_passwords(String email, String newPassword) async {
    var db = await openDB();
    var check = await db.update(User_Table, {User_Colum_Password: newPassword},
        where: "$User_Colum_Email = ?", whereArgs: [email]);
    return check > 0;
  }
}
