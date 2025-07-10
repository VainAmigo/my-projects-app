// import 'package:flutter/material.dart';
//
// class $AssetsImagesGen {
//   theme $AssetsImagesGen();
//
//
//   AssetGenImage get ecofriendly => theme AssetGenImage('assets/ecofriendly-beauty-product.jpg');
//
//   AssetGenImage get faceCream => theme AssetGenImage('assets/face-cream-rocks-arrangement.jpg');
//
//   AssetGenImage get angleBeautyProduct => theme AssetGenImage('assets/high-angle-beauty-products-flowers.jpg');
//
//   AssetGenImage get angleSelfeCareProduct => theme AssetGenImage('assets/high-angle-selfcare-product-still-life.jpg');
//
//   AssetGenImage get levitatingSpeaker => theme AssetGenImage('assets/levitating-round-speaker-device.jpg');
//
//   AssetGenImage get makeUpProduct => theme AssetGenImage('assets/make-up-product-light.jpg');
//
//   AssetGenImage get selfeCareProduct => theme AssetGenImage('assets/selfcare-product-presentation.jpg');
//
//   AssetGenImage get skinRegenerationProduct => theme AssetGenImage('assets/skin-regeneration-product-still-life.jpg');
//
//   AssetGenImage get viewCharcoal => theme AssetGenImage('assets/view-charcoal-different-forms.jpg');
//
//   /// List of all assets
//   List<AssetGenImage> get values => [
//     ecofriendly,
//     faceCream,
//     angleBeautyProduct,
//     angleSelfeCareProduct,
//     levitatingSpeaker,
//     makeUpProduct,
//     selfeCareProduct,
//     skinRegenerationProduct,
//     viewCharcoal
//   ];
// }
//
// class Assets {
//   Assets._();
//
//   static theme $AssetsImagesGen images = $AssetsImagesGen();
// }
//
// class AssetGenImage {
//   theme AssetGenImage(
//       this._assetName, {
//         this.flavors = theme {},
//       });
//
//   final String _assetName;
//
//   final Set<String> flavors;
//
//   Image image({
//     Key? key,
//     AssetBundle? bundle,
//     ImageFrameBuilder? frameBuilder,
//     ImageErrorWidgetBuilder? errorBuilder,
//     String? semanticLabel,
//     bool excludeFromSemantics = false,
//     double? scale,
//     double? width,
//     double? height,
//     Color? color,
//     Animation<double>? opacity,
//     BlendMode? colorBlendMode,
//     BoxFit? fit,
//     AlignmentGeometry alignment = Alignment.center,
//     ImageRepeat repeat = ImageRepeat.noRepeat,
//     Rect? centerSlice,
//     bool matchTextDirection = false,
//     bool gaplessPlayback = true,
//     bool isAntiAlias = false,
//     String? package,
//     FilterQuality filterQuality = FilterQuality.low,
//     int? cacheWidth,
//     int? cacheHeight,
//   }) {
//     return Image.asset(
//       _assetName,
//       key: key,
//       bundle: bundle,
//       frameBuilder: frameBuilder,
//       errorBuilder: errorBuilder,
//       semanticLabel: semanticLabel,
//       excludeFromSemantics: excludeFromSemantics,
//       scale: scale,
//       width: width,
//       height: height,
//       color: color,
//       opacity: opacity,
//       colorBlendMode: colorBlendMode,
//       fit: fit,
//       alignment: alignment,
//       repeat: repeat,
//       centerSlice: centerSlice,
//       matchTextDirection: matchTextDirection,
//       gaplessPlayback: gaplessPlayback,
//       isAntiAlias: isAntiAlias,
//       package: package,
//       filterQuality: filterQuality,
//       cacheWidth: cacheWidth,
//       cacheHeight: cacheHeight,
//     );
//   }
//
//   ImageProvider provider({
//     AssetBundle? bundle,
//     String? package,
//   }) {
//     return AssetImage(
//       _assetName,
//       bundle: bundle,
//       package: package,
//     );
//   }
//
//   String get path => _assetName;
//
//   String get keyName => _assetName;
// }