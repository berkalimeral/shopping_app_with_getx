import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import 'circle_container.dart';
import 'cuved_edges_widget.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
      child: Container(
        color: AppColors.primary,
        padding: const EdgeInsets.only(bottom: 0),
        child: SizedBox(
          height: 350,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: CircleContainer(
                  backgroundColor: AppColors.white.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: CircleContainer(
                  backgroundColor: AppColors.white.withOpacity(0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
