import 'package:flutter/material.dart';


const cards = <Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'Elevation 0'},
  {'elevation': 1.0, 'label': 'Elevation 1'},
  {'elevation': 2.0, 'label': 'Elevation 2'},
  {'elevation': 3.0, 'label': 'Elevation 3'},
  {'elevation': 4.0, 'label': 'Elevation 4'},
  {'elevation': 5.0, 'label': 'Elevation 5'},
  {'elevation': 6.0, 'label': 'Elevation 6'},
  {'elevation': 7.0, 'label': 'Elevation 7'},
  {'elevation': 8.0, 'label': 'Elevation 8'},
];


class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});
  static const String name = 'cards_screen';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screen'),
      ),
      body: _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map( (card) => _CardType1(card['label'], card['elevation'])),
          ...cards.map( (card) => _CardType2(card['label'], card['elevation'])),
          ...cards.map( (card) => _CardType3(card['label'], card['elevation'])),
          ...cards.map( (card) => _CardType4(card['label'], card['elevation'])),
          SizedBox(height: 150,)
        ],
      ),
    );
  }
}


class _CardType1 extends StatelessWidget {
  final String label;
  final double elevation;
  const _CardType1(this.label, this.elevation);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: EdgeInsetsGeometry.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(onPressed: (){}, icon: Icon( Icons.more_vert_rounded ))
              ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(label),
            )
          ],
        ),
        ),
      
    );
  }
}


class _CardType2 extends StatelessWidget {
  final String label;
  final double elevation;
  const _CardType2(this.label, this.elevation);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all( Radius.circular(12) ),
        side: BorderSide(
          color: theme.outline
        )
      ),
      elevation: elevation,
      child: Padding(
        padding: EdgeInsetsGeometry.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(onPressed: (){}, icon: Icon( Icons.more_vert_rounded ))
              ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - outline'),
            )
          ],
        ),
        ),
      
    );
  }
}

class _CardType3 extends StatelessWidget {
  final String label;
  final double elevation;
  const _CardType3(this.label, this.elevation);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Card(
      color: theme.error,
      elevation: elevation,
      child: Padding(
        padding: EdgeInsetsGeometry.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(onPressed: (){}, icon: Icon( Icons.more_vert_rounded ))
              ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - filled'),
            )
          ],
        ),
        ),
      
    );
  }
}
class _CardType4 extends StatelessWidget {
  final String label;
  final double elevation;
  const _CardType4(this.label, this.elevation);

  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context).colorScheme;
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: elevation,
      child: Stack(
        children: [
          Image.network(
            'https://i.pinimg.com/736x/5f/fb/fe/5ffbfe450395c0b91e6ff5ba071f2a91.jpg',

          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))
              ),
              child: IconButton(onPressed: (){}, icon: Icon( Icons.more_vert_rounded 
              )))
            ),
        ],
      ),
      
    );
  }
}
