// import 'package:flutter/material.dart';
// import 'package:talk2me/constants/colors.dart';

// class OutlineBtn extends StatelessWidget {
//   final Color? borderColor;
//   final Text? buttonText;
//   final Function? onPressed;

//   OutlineBtn({this.borderColor, this.buttonText, this.onPressed});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(top: 16.0),
//       padding: const EdgeInsets.only(left: 16.0, right: 16.0),
//       child: new Row(
//         children: <Widget>[
//           new Expanded(
//             child: OutlinedButton(
//               style: ButtonStyle(
//                 side: MaterialStateProperty.all(BorderSide(
//                     color: AppColors.primaryColor,
//                     width: 2,
//                     style: BorderStyle.solid)),
//                 shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                     borderRadius: new BorderRadius.circular(15.0))),
//               ),
//               child: new Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   new Padding(
//                     padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
//                     child: buttonText,
//                   ),
//                 ],
//               ),
//               onPressed: () => onPressed!(),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
