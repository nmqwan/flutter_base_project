enum Flavor {
  dev,
  prod,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return '[Dev]TNG eHR ';
      case Flavor.prod:
        return 'TNG eHR';
      default:
        return 'title';
    }
  }

}
