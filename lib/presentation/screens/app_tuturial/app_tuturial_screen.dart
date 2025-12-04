import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
    'Busca la comida',
    'Deserunt nisi proident qui cupidatat dolore est fugiat nostrud occaecat ad.',
    'assets/images/1.png',
  ),
  SlideInfo(
    'Entrega rápida',
    'Esse veniam ullamco nisi est sint cillum enim in eiusmod dolor labore duis.',
    'assets/images/2.png',
  ),
  SlideInfo(
    'Disfruta la comida',
    'Labore aliqua pariatur minim deserunt laborum elit.',
    'assets/images/3.png',
  ),
];

class AppTuturialScreen extends StatefulWidget {
  const AppTuturialScreen({super.key});
  static const String name = 'app_tutorial_screen';

  @override
  State<AppTuturialScreen> createState() => _AppTuturialScreenState();
}

class _AppTuturialScreenState extends State<AppTuturialScreen> {
  late final PageController pageviewController = PageController();
  bool endReached = false;
  @override
  void initState() {
    super.initState();

    pageviewController.addListener(() {

      final page = pageviewController.page ?? 0;
      if ( !endReached && page >= ( slides.length - 1.5 ) ){
        setState(() {
          endReached = true;
        });
      }

    });

  }

  @override
  void dispose() {
    pageviewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageviewController,
            physics: BouncingScrollPhysics(),
            children: [...slides.map((slideData) => _Slide(slideData))],
          ),

          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              onPressed: () => context.pop(),
              child: Text('Salir'),
            ),
          ),
          
          endReached ? Positioned(
            right: 30,
            bottom: 40,
            child: FadeInRight(
              from: 15,
              delay:  const Duration(milliseconds: 100),
              child: FilledButton(onPressed: 
              ()=> context.pop(), child: const Text('Comenzar')),
            )
            ) : SizedBox()
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final SlideInfo slide;

  const _Slide(this.slide);

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(slide.imageUrl)),
            const SizedBox(height: 20),
            Text(slide.title, style: titleStyle),
            const SizedBox(height: 10),
            Text(slide.caption, style: captionStyle),
          ],
        ),
      ),
    );
  }
}
