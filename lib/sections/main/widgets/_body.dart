part of '../main_section.dart';

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);

    return ListView.builder(
        controller: scrollProvider.controller,
        itemCount: BodyUtils.views.length,
        itemBuilder: (context, index) {
          return WidgetAnimator(
            child: Center(child: BodyUtils.views[index]),
          );
        });
  }
}
