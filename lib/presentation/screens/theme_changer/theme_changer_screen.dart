// ignore_for_file: deprecated_member_use

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  const ThemeChangerScreen({super.key});
  static const String name = 'theme_changer_screen';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    final bool isDarkMode = ref.watch( isDarkModeProvider );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme changer'),
        actions: [
          IconButton(
            onPressed: () {
              ref.read( isDarkModeProvider.notifier ). update((state) => !state,);
            },

            icon: isDarkMode
                ? FadeIn(child: Icon(Icons.dark_mode_outlined))
                : FadeIn(child: Icon(Icons.light_mode_outlined)),
          ),
        ],
      ),
      body: _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Color> colors = ref.watch( colorListProvider );
    final selectedColor = ref.watch( selectedColorProvider );
    
    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final Color color = colors [index];


        return RadioListTile(
          title: Text('Este color', style: TextStyle(color: color),),
          subtitle: Text('${ color.value }'),
          activeColor: color,
          value: index,
          groupValue: selectedColor,
          onChanged: (value) {
            ref.read( selectedColorProvider.notifier ).update((state) => state=value!,);
          },
          );

      },
      );
  }
}