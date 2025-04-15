import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'adyen_apple_pay_provisioning_platform_interface.dart';

/// An implementation of [AdyenApplePayProvisioningPlatform] that uses method channels.
class MethodChannelAdyenApplePayProvisioning extends AdyenApplePayProvisioningPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('adyen_apple_pay_provisioning');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
