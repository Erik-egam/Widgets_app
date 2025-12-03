import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});
  static const String name = 'snackbar_screen';

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackBar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog( BuildContext context ){
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) => AlertDialog(
        title: const Text('Estas Seguro?'),
        content: const Text('Amet nulla voluptate voluptate id ipsum amet sit id aliquaAmet nulla voluptate voluptate id ipsum amet sit id aliquaAmet nulla voluptate voluptate id ipsum amet sit id aliquaAmet nulla voluptate voluptate id ipsum amet sit id aliquaAmet nulla voluptate voluptate id ipsum amet sit id aliquaAmet nulla voluptate voluptate id ipsum amet sit id aliqua.'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(onPressed: () => context.pop(), child: const Text('Aceptar'))
        ],
      ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Snackbars y dialogos')),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text(
                      'Nisi commodo dolore veniam commodo amet commodo ut quis aliquip aliqua dolor enim excepteur esse.',
                    ),
                  ],
                );
              },
              child: Text('Licensias usadas'),
            ),

            SizedBox(height: 30),

            FilledButton.tonal(
              onPressed: () {
                openDialog(context);
              },
              child: Text('Mostrar dialogo'),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: Text('Mostrar Snackbar'),
        icon: Icon(Icons.remove_red_eye_outlined),
        onPressed: () {
          showCustomSnackbar(context);
        },
      ),
    );
  }
}
