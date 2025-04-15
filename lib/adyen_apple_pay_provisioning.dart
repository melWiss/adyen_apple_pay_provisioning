
import 'adyen_apple_pay_provisioning_platform_interface.dart';

class AdyenApplePayProvisioning {
  Future<String?> getPlatformVersion() {
    return AdyenApplePayProvisioningPlatform.instance.getPlatformVersion();
  }
}
