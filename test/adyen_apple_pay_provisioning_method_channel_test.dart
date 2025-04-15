import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:adyen_apple_pay_provisioning/adyen_apple_pay_provisioning_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelAdyenApplePayProvisioning platform = MethodChannelAdyenApplePayProvisioning();
  const MethodChannel channel = MethodChannel('adyen_apple_pay_provisioning');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
