part of '../main_section.dart';

class _NavbarDesktop extends StatelessWidget {
  const _NavbarDesktop();

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: Space.all(),
      color: const Color.fromRGBO(0, 0, 0, 1),
      child: Row(
        children: [
          const NavBarLogo(),
          Space.xm!,
          ...NavBarUtils.names.asMap().entries.map(
                (e) => NavBarActionButton(
                  label: e.value,
                  index: e.key,
                ),
              ),
          MediaQuery.of(context).size.width > 1157
              ? EntranceFader(
                  offset: const Offset(0, -10),
                  delay: const Duration(milliseconds: 100),
                  duration: const Duration(milliseconds: 250),
                  child: MaterialButton(
                    hoverColor: AppTheme.c!.primary!.withAlpha(150),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(
                        color: AppTheme.c!.primary!,
                      ),
                    ),
                    onPressed: () {
                      html.window.open(
                        StaticUtils.resume,
                        "pdf",
                      );
                    },
                    child: Padding(
                      padding: Space.all(1.25, 0.45),
                      child: Text(
                        'RESUME',
                        style: AppText.l1b,
                      ),
                    ),
                  ),
                )
              : const SizedBox(),
          Space.x!,
          Space.x!,
        ],
      ),
    );
  }
}

class _NavBarTablet extends StatelessWidget {
  const _NavBarTablet();

  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context);

    return Padding(
      padding: Space.v!,
      child: Row(
        children: [
          Space.x1!,
          IconButton(
            highlightColor: Colors.white54,
            splashRadius: AppDimensions.normalize(10),
            onPressed: () {
              drawerProvider.key.currentState!.openDrawer();
            },
            icon: const Icon(
              Icons.menu,
            ),
          ),
          Space.xm!,
          const NavBarLogo(),
          Space.x1!,
        ],
      ),
    );
  }
}
