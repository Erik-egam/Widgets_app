import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkModeProvider = StateProvider((ref) => false);
final selectedColorProvider = StateProvider((ref) => 0);

// para exponer valores inmutables como quien dice const
final colorListProvider = Provider((ref) => colorList);














// tipo de datos mas complejos
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

// Controller or Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  // STATE = ESTADO = nueva instancia de AppTheme

  ThemeNotifier() : super(AppTheme());


  void toggleDarkMode(){
    state = state.copyWith( isDarkMode: !state.isDarkMode );
  }

  void changeColorIndex({ int? selectedColor }){
    state = state.copyWith( selectedColor: selectedColor );
  }
}
