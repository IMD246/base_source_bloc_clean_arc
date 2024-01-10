import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../common_widgets/common_widgets.dart';

@RoutePage()
class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return const CommonScaffold(
      body: Center(
        child: Text('Notification Page'),
      ),
    );
  }
}
