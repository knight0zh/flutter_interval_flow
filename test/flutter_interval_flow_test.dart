import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_interval_flow/flutter_interval_flow.dart';
import 'package:flutter_interval_flow/flutter_interval_flow_platform_interface.dart';
import 'package:flutter_interval_flow/flutter_interval_flow_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterIntervalFlowPlatform
    with MockPlatformInterfaceMixin
    implements FlutterIntervalFlowPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterIntervalFlowPlatform initialPlatform = FlutterIntervalFlowPlatform.instance;

  test('$MethodChannelFlutterIntervalFlow is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterIntervalFlow>());
  });

  test('getPlatformVersion', () async {
    FlutterIntervalFlow flutterIntervalFlowPlugin = FlutterIntervalFlow();
    MockFlutterIntervalFlowPlatform fakePlatform = MockFlutterIntervalFlowPlatform();
    FlutterIntervalFlowPlatform.instance = fakePlatform;

    expect(await flutterIntervalFlowPlugin.getPlatformVersion(), '42');
  });
}
