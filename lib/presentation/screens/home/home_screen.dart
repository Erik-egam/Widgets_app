import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String name = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets Flutter'),
      ),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        MenuItems menuItem =  appMenuItems[index];
        return _CustomListTile(menuItem: menuItem);
      },
      );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.menuItem,
  });

  final MenuItems menuItem;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(menuItem.icon, color: theme.primary),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: theme.primary,),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: () {
        context.push(menuItem.link);
      },
    );
  }
}