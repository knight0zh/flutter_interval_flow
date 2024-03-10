import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_interval_flow_method_channel.dart';

abstract class FlutterIntervalFlowPlatform extends PlatformInterface {
  /// Constructs a FlutterIntervalFlowPlatform.
  FlutterIntervalFlowPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterIntervalFlowPlatform _instance = MethodChannelFlutterIntervalFlow();

  /// The default instance of [FlutterIntervalFlowPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterIntervalFlow].
  static FlutterIntervalFlowPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterIntervalFlowPlatform] when
  /// they register themselves.
  static set instance(FlutterIntervalFlowPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
