// part of '../conversations_page.dart';

// class CreateConversationButton extends StatelessWidget {
//   const CreateConversationButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return PopupMenuButton<dynamic>(
//       icon: AppIcon(icon: AppIcons.createConversation),
//       onSelected: (dynamic _) {},
//       offset: const Offset(0.0, kToolbarHeight),
//       shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(Sizes.s8))),
//       itemBuilder: (ctx) => [
//         _buildPopupMenuItem('Search', Icons.search),
//         _buildPopupMenuItem('Upload', Icons.upload),
//         _buildPopupMenuItem('Copy', Icons.copy),
//         _buildPopupMenuItem('Exit', Icons.exit_to_app),
//       ],
//     );
//   }

//   PopupMenuItem _buildPopupMenuItem(String title, IconData iconData) {
//     return PopupMenuItem<dynamic>(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           Icon(
//             iconData,
//             color: Colors.black,
//           ),
//           Text(title),
//         ],
//       ),
//     );
//   }
// }
