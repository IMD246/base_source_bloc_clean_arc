import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../base/base_page_state.dart';
import '../../../common_widgets/common_scaffold.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../resource/styles/gaps.dart';
import 'bloc/calendar_bloc.dart';

@RoutePage()
class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends BasePageState<CalendarPage, CalendarBloc> {
  @override
  bool get useLoadingIndicator => true;

  @override
  void initState() {
    super.initState();
    bloc.add(const CalendarInitiated());
  }

  @override
  Widget buildPage(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: BlocBuilder<CalendarBloc, CalendarState>(
            buildWhen: (previous, current) {
              return previous.events != current.events;
            },
            builder: (context, state) {
              return ListView.builder(
                itemCount: state.events.length,
                itemBuilder: (context, index) {
                  final event = state.events[index];

                  return Container(
                    margin: AppSpacing.edgeInsetsAll12,
                    height: 100.w,
                    width: 100.w,
                    decoration: BoxDecoration(
                      borderRadius: AppSpacing.borderRadius8,
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          event.eventTitle ?? '',
                        ),
                        AppSpacing.gapH8,
                        Text(
                          event.startTime.toString(),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
