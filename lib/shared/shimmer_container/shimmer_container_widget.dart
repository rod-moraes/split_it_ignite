import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerContainerWidget extends StatelessWidget {
  final double height;
  final double width;
  const ShimmerContainerWidget({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: Container(color: Colors.white),
      ),
    );
  }
}
