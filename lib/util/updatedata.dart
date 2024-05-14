// // ignore: depend_on_referenced_packages
// import 'package:firebase_database/firebase_database.dart';

// void updateUserData(String uid,double input_fat,double input_carbs,double input_protein) {
//   DatabaseReference databaseReference = FirebaseDatabase.instance.reference().child('users').child(uid);
  
//   // ข้อมูลที่ต้องการอัปเดต
//   Map<String, dynamic> updatedData = {
//     "fat": input_fat,
//     "carbs": input_carbs,
//     "protein": input_protein,
//     // เพิ่มข้อมูลอื่นๆ ตามต้องการ
//   };

//   // อัปเดตข้อมูลใน Firebase Realtime Database
//   databaseReference.update(updatedData)
//     .then((value) {
//       print("อัปเดตข้อมูลสำเร็จ");
//     })
//     .catchError((error) {
//       print("เกิดข้อผิดพลาดในการอัปเดตข้อมูล: $error");
//     });
// }

// Future<Map<String, dynamic>> fetchData(String uid) async {
//   DatabaseReference databaseReference = FirebaseDatabase.instance.reference().child('users').child(uid);

//   try {
//     // ใช้ .once().then() แทน .once() เพื่อรับ DatabaseEvent แล้วจึงคืน DataSnapshot
//     DataSnapshot snapshot = await databaseReference.once().then((event) => event.snapshot);
//     Map<dynamic, dynamic> values = snapshot.value;

    
//     return Map<String, dynamic>.from(values);
//   } catch (error) {
//     print("เกิดข้อผิดพลาดในการดึงข้อมูล: $error");
//     return {}; // หรือสามารถส่งค่า null ก็ได้ตามต้องการ
//   }
// }
