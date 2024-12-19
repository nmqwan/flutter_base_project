import '../../base_project.dart';

// ignore: non_constant_identifier_names
Widget BaseCacheImage(String? url,
    {double? width, double? height, BoxFit? fit}) {
  return CachedNetworkImage(
    width: width,
    height: height,
    fit: fit,
    placeholder: (context, url) => Container(),
    errorWidget: (context, url, error) => Image.network(
      "https://tranhieuit.com/wp-content/uploads/2019/04/ngan-chan-loi-404-wordpress.jpg",
      fit: fit,
    ),
    imageUrl: url ??
        "https://tranhieuit.com/wp-content/uploads/2019/04/ngan-chan-loi-404-wordpress.jpg",
  );
}
