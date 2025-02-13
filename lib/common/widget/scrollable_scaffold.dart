import 'package:flutter/material.dart';

class ScrollableScaffold extends StatelessWidget {
  final String name;
  final EdgeInsets padding;
  final Alignment alignment;
  final Widget? floatingActionButton;
  final Widget child;

  const ScrollableScaffold({
    Key? key,
    required this.name,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
    this.alignment = Alignment.topCenter,
    this.floatingActionButton,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final systemPadding = MediaQuery.of(context).padding;

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
        padding: padding +
            EdgeInsets.fromLTRB(
              systemPadding.left,
              0,
              systemPadding.right,
              0,
            ),
        alignment: alignment,
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(0, 0, 0, systemPadding.bottom),
          child: child,
        ),
      ),
    );
  }
}
