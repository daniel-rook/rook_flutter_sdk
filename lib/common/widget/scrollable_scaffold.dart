import 'package:flutter/material.dart';

class ScrollableScaffold extends StatelessWidget {
  final String name;
  final double padding;
  final Alignment alignment;
  final Widget? floatingActionButton;
  final Widget child;

  const ScrollableScaffold({
    Key? key,
    required this.name,
    this.padding = 10,
    this.alignment = Alignment.topCenter,
    this.floatingActionButton,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        leading: Navigator.of(context).canPop()
            ? IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.arrow_back_rounded),
              )
            : null,
      ),
      floatingActionButton: floatingActionButton,
      body: Container(
        padding: EdgeInsets.all(padding),
        alignment: alignment,
        child: SingleChildScrollView(
          child: child,
        ),
      ),
    );
  }
}
