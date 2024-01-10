import 'dart:io';

import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

import '../resource/resource.dart';

class CameraView extends StatelessWidget {
  const CameraView({super.key});

  Future<String> _path(CaptureMode captureMode) async {
    final Directory extDir = await getTemporaryDirectory();
    final testDir = await Directory('${extDir.path}/test').create(recursive: true);
    final String fileExtension = captureMode == CaptureMode.photo ? 'jpg' : 'mp4';
    final String filePath = '${testDir.path}/${DateTime.now().millisecondsSinceEpoch}.$fileExtension';

    return filePath;
  }

  @override
  Widget build(BuildContext context) {
    bool didPop = false;

    return Scaffold(
      body: CameraAwesomeBuilder.awesome(
        saveConfig: SaveConfig.photoAndVideo(
          photoPathBuilder: () => _path(CaptureMode.photo),
          videoPathBuilder: () => _path(CaptureMode.video),
        ),
        topActionsBuilder: (state) => AppSpacing.emptyBox,
        bottomActionsBuilder: (state) {
          state.captureState$.listen((event) {
            if (didPop || event == null || event.status != MediaCaptureStatus.success) {
              return;
            }
            didPop = true;
            Navigator.pop(context, File(event.filePath));
          });

          return AwesomeBottomActions(
            state: state,
            left: AwesomeFlashButton(state: state),
            right: AwesomeCameraSwitchButton(state: state),
          );
        },
      ),
    );
  }
}
