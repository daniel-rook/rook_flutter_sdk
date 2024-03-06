import 'package:flutter/material.dart';
import 'package:rook_flutter_sdk/common/widget/scrollable_scaffold.dart';

class HCPrivacyPolicyScreen extends StatelessWidget {
  const HCPrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScrollableScaffold(
      name: 'Privacy policy',
      child: Column(
        children: [
          Text('This is a placeholder example.'),
          SizedBox(height: 10),
          Text(
            'Your app should display an appropriate privacy policy for how you will handle and use Health Connect data.',
          ),
          SizedBox(height: 10),
          Text(
            'This sample app does not store or transmit any data outside of Health Connect.',
          ),
        ],
      ),
    );
  }
}
