import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'adyen_apple_pay_provisioning_method_channel.dart';

abstract class AdyenApplePayProvisioningPlatform extends PlatformInterface {
  /// Constructs a AdyenApplePayProvisioningPlatform.
  AdyenApplePayProvisioningPlatform() : super(token: _token);

  static final Object _token = Object();

  static AdyenApplePayProvisioningPlatform _instance = MethodChannelAdyenApplePayProvisioning();

  /// The default instance of [AdyenApplePayProvisioningPlatform] to use.
  ///
  /// Defaults to [MethodChannelAdyenApplePayProvisioning].
  static AdyenApplePayProvisioningPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AdyenApplePayProvisioningPlatform] when
  /// they register themselves.
  static set instance(AdyenApplePayProvisioningPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
