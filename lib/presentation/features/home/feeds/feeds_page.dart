import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../common_widgets/common_widgets.dart';

@RoutePage()
class FeedsPage extends StatefulWidget {
  const FeedsPage({super.key});

  @override
  State<FeedsPage> createState() => _FeedsPageState();
}

class _FeedsPageState extends State<FeedsPage> {
  @override
  Widget build(BuildContext context) {
    return const CommonScaffold(
      body: Center(
        child: Text('Feed Page'),
      ),
    );
  }
}
