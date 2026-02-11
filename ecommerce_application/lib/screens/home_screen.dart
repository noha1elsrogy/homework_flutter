import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: FirebaseFirestore.instance.collection('users').get(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        // 1. في حالة حدوث خطأ
        if (snapshot.hasError) {
          return Scaffold(
            body: Center(child: Text("حدث خطأ ما: ${snapshot.error}")),
          );
        }

        // 2. في حالة انتظار البيانات (Loading)
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        // 3. التحقق من وجود بيانات (Data exists)
        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return const Scaffold(
            body: Center(child: Text("لا توجد بيانات مستخدمين")),
          );
        }

        // 4. عرض البيانات بنجاح بعد التأكد أنها ليست null
        // final docs = snapshot.data!.docs;
        return Scaffold(
          appBar: AppBar(title: const Text('Home Screen'), centerTitle: true),
          body: snapshot.hasData
              ? Center(
                  child: Text(
                    snapshot.data!.docs[0]['firstName'] +
                        ' ' +
                        snapshot.data!.docs[0]['lastName'],
                  ),
                )
              : const SizedBox.shrink(),

          // تحويل البيانات لـ Map للوصول للحقول بسهولة
          // var data = docs[index].data() as Map<String, dynamic>;
          // return ListTile(
          //   title: Text(data['firstName'] + ' ' + data['lastName']),
          // );
        );
      },
    );
  }
}
