import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});
  static const String name = 'buttons_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons Screen')),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Elevated button')),
            ElevatedButton(onPressed: null, child: Text('Elevated Disable')),
            ElevatedButton.icon(
              onPressed: null,
              icon: Icon(Icons.access_alarm_rounded),
              label: Text('Elevated Icon'),
            ),
            FilledButton(onPressed: () {}, child: Text('filled button')),
            FilledButton.icon(
              onPressed: () {},
              label: Text('filled icon button'),
              icon: Icon(Icons.youtube_searched_for_rounded),
            ),
            OutlinedButton(onPressed: () {}, child: Text('outline button')),
            OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.workspaces_sharp),
              label: Text('outline icon button'),
            ),
            TextButton(onPressed: () {}, child: Text('text Buttons')),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.access_time_filled_sharp),
              label: Text('Text buttons icon'),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.access_alarms_sharp)),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.access_alarms_sharp,),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(theme.primary),
                iconColor: WidgetStatePropertyAll(Colors.black)
              )
              ),
            const _CustomButton()
          ],
        ),
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  const _CustomButton();

  @override
  Widget build(BuildContext context) {
  final theme = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(20),
      child: Material(
        color: theme.primary,
        child: InkWell(
          onTap: () {
            
          },
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola mundo', style: TextStyle(color: Colors.white),),
            ),
        ),
      ),
    );
  }
}