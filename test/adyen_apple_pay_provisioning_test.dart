import 'package:flutter_test/flutter_test.dart';
import 'package:adyen_apple_pay_provisioning/adyen_apple_pay_provisioning.dart';
import 'package:adyen_apple_pay_provisioning/adyen_apple_pay_provisioning_platform_interface.dart';
import 'package:adyen_apple_pay_provisioning/adyen_apple_pay_provisioning_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAdyenApplePayProvisioningPlatform
    with MockPlatformInterfaceMixin
    implements AdyenApplePayProvisioningPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AdyenApplePayProvisioningPlatform initialPlatform = AdyenApplePayProvisioningPlatform.instance;

  test('$MethodChannelAdyenApplePayProvisioning is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAdyenApplePayProvisioning>());
  });

  test('getPlatformVersion', () async {
    AdyenApplePayProvisioning adyenApplePayProvisioningPlugin = AdyenApplePayProvisioning();
    MockAdyenApplePayProvisioningPlatform fakePlatform = MockAdyenApplePayProvisioningPlatform();
    AdyenApplePayProvisioningPlatform.instance = fakePlatform;

    expect(await adyenApplePayProvisioningPlugin.getPlatformVersion(), '42');
  });
}
