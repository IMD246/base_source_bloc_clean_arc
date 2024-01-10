import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../common_widgets/common_widgets.dart';

@RoutePage()
class ContactsPage extends StatefulWidget {
  const ContactsPage({super.key});

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  @override
  Widget build(BuildContext context) {
    return const CommonScaffold(
      body: Center(
        child: Text('Contacts Page'),
      ),
    );
  }
}
