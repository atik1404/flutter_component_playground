import 'package:flutter/services.dart';
import 'package:flutter_component_playground/common/utils/logger_utils';

final class FlavorConfig {
  static final FlavorConfig _instance = FlavorConfig._internal();
  factory FlavorConfig() => _instance;

  Flavor _appFlavor = Flavor.development;

  Flavor get appFlavor => _appFlavor;
  FlavorConfig._internal();

  Future<void> initialize() async {
    try {
      final flavorString = await const MethodChannel("flavor_channel")
          .invokeMethod<String>("getFlavor");
      if (flavorString == "production") {
        _appFlavor = Flavor.production;
      } else if (flavorString == "staging") {
        _appFlavor = Flavor.staging;
      } else {
        _appFlavor = Flavor.development;
      }
    } catch (e) {
      log.shout("Error fetching app flavor: $e");
    }
  }

  bool isDevelopment() => _appFlavor == Flavor.development;
  bool isStaging() => _appFlavor == Flavor.staging;
  bool isProduction() => _appFlavor == Flavor.production;
}

enum Flavor {
  development,
  staging,
  production,
}
