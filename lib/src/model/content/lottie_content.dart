import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:survey_kit/src/model/content/content.dart';
import 'package:survey_kit/src/view/widget/content/lottie_widget.dart';

part 'lottie_content.g.dart';

@JsonSerializable()
class LottieContent extends Content {
  final String? url;
  final String? asset;
  final bool repeat;
  final double width;
  final double height;

  const LottieContent({
    this.url,
    this.asset,
    this.repeat = false,
    this.width = 200,
    this.height = 200,
    super.id,
  }) : assert(url != null || asset != null, 'Either url or asset must be set');

  factory LottieContent.fromJson(Map<String, dynamic> json) =>
      _$LottieContentFromJson(json);

  Map<String, dynamic> toJson() => _$LottieContentToJson(this);

  @override
  Widget createWidget() {
    return LottieWidget(lottieContent: this);
  }
}
