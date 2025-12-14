// import 'package:flutter/material.dart';
// import 'package:whether_app/Widgets/no_whether_ststus.dart';
// import 'package:whether_app/Widgets/whether_status.dart';
// import 'package:whether_app/models/whether_model.dart';
// import 'package:whether_app/services/new_servies.dart';

// class WhetherStatuesF extends StatefulWidget {
//   final String nameCountry;
//   final WhetherManger whetherManger;
//   const WhetherStatuesF({
//     super.key,
//     required this.whetherManger,
//     required this.nameCountry,
//   });

//   @override
//   State<WhetherStatuesF> createState() => _WhetherStatuesFState();
// }

// class _WhetherStatuesFState extends State<WhetherStatuesF> {
//   var future;
//   void initState() {
//     super.initState();
//     future = NewService().getWhether();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: future,
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           return WhetherStatusUi(
//             whetherManger: widget.whetherManger,
//             countryName: widget.nameCountry,
//           );
//         } else if (snapshot.hasError) {
//           return Text('there exist error');
//         } else {
//           return NoWhetherStatues();
//         }
//       },
//     );
//   }
// }
