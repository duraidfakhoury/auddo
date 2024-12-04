import 'package:auddo/common/color_extension.dart';
import 'package:flutter/material.dart';

class IconTextRow extends StatelessWidget {
  final String title ; 
  final String icon ; 
  final VoidCallback onTap ; 
  const IconTextRow({
    super.key,
    required this.title,
    required this.icon, 
    required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
            SizedBox(
              child: ListTile(
                leading: Image.asset(
                  icon,
                  width: 25,
                  height: 25,
                  fit: BoxFit.contain,
                ),
                title: Text(
                  title , 
                  style: TextStyle(
                    color: TColor.primaryText.withOpacity(0.9),
                    fontWeight: FontWeight.w600,
                    fontSize: 14
                  ),
                ),
                onTap:onTap,
              ),
            ),
            Divider(color: TColor.primaryText.withOpacity(0.07),indent: 70),
      ],
    );
  }
}