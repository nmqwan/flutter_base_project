/// A class that provides methods to get asset paths for various resources.
class MyAssets {
  final String _assetPath = 'packages/base_project/lib/assets';

  /// Returns the asset path for an icon in PNG format.
  ///
  /// The [myIcon] parameter specifies the name of the icon.
  String getIconPNG(String myIcon) {
    return '$_assetPath/icons/$myIcon.png';
  }

  /// Returns the asset path for an icon in SVG format.
  ///
  /// The [myIcon] parameter specifies the name of the icon.
  String getIconSVG(String myIcon) {
    return '$_assetPath/icons/$myIcon.svg';
  }

  /// Returns the asset path for an image in PNG format.
  ///
  /// The [myImage] parameter specifies the name of the image.
  String getImagePNG(String myImage) {
    return '$_assetPath/images/$myImage.png';
  }

  /// Returns the asset path for an image in SVG format.
  ///
  /// The [myImage] parameter specifies the name of the image.
  String getImageSVG(String myImage) {
    return '$_assetPath/images/$myImage.svg';
  }

  /// Returns the asset path for a logo in SVG format.
  ///
  /// The [myImage] parameter specifies the name of the logo.
  String getLogoSVG(String myImage) {
    return '$_assetPath/logo/$myImage.svg';
  }

  /// Returns the asset path for a logo in PNG format.
  ///
  /// The [myImage] parameter specifies the name of the logo.
  String getLogoPNG(String myImage) {
    return '$_assetPath/logo/$myImage.png';
  }
}

/// A class that provides asset paths for TrungNguyen assets.
class TrungNguyenAsset {
  static final MyAssets _myAssets = MyAssets();
  static String logoSVGNoBG = _myAssets.getLogoSVG("logo_no_bg");
  // static String imgSplashScreen = MyAssets.getImagePNG("bg_spash_screen");
  static String logo = _myAssets.getLogoPNG("logo_lt");
  static String logoAppbar = _myAssets.getImagePNG("bg_appbar");
  static String logoSlogan = _myAssets.getImagePNG("logo_slogan_green");
  static String placeholder = _myAssets.getImagePNG("placeholder");
  //Icons
  static String iconCheckAll = _myAssets.getIconPNG("icon_check_all");
  static String iconDelRed = _myAssets.getIconPNG("icon_del_red");
  static String iconDelWhite = _myAssets.getIconPNG("icon_del_white");
  static String iconDrawer = _myAssets.getIconPNG("icon_drawer");
  static String iconEdit = _myAssets.getIconPNG("icon_edit");
  static String iconError = _myAssets.getIconPNG("icon_error");
  static String iconErrorWhite = _myAssets.getIconPNG("icon_error_white");
  static String iconWarning = _myAssets.getIconPNG("icon_warning");
  static String iconQRSVG = _myAssets.getIconSVG("icon_qr");
  static String iconLogout = _myAssets.getIconPNG("icon_logout");
  static String iconSetting = _myAssets.getIconPNG("icon_setting");
  static String iconNoti = _myAssets.getIconSVG("icon_noti");
}
