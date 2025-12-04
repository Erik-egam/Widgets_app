import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: "Botones",
    subTitle: "Varios Botones en Flutter",
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),

  MenuItems(
    title: "Tarjetas",
    subTitle: "un contenedor estilizado",
    link: '/cards',
    icon: Icons.credit_card_rounded,
  ),

  MenuItems(
    title: "Progress Indicators",
    subTitle: "Generales y controlados",
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),

  MenuItems(
    title: "Snackbars y dialogos",
    subTitle: "Indicadores en pantalla",
    link: '/snackbars',
    icon: Icons.info_outline,
  ),

  MenuItems(
    title: "Animated Container",
    subTitle: "Stateful widget animado",
    link: '/animated',
    icon: Icons.check_box_outline_blank_rounded,
  ),

  MenuItems(
    title: "UI controls + Tiles",
    subTitle: "Serie de controles en flutter",
    link: '/ui-controls',
    icon: Icons.car_rental_outlined,
  ),

  MenuItems(
    title: "Introduccion a la aplicacion",
    subTitle: "Pequeño tutorial introductorio",
    link: '/tutorial',
    icon: Icons.accessibility_new_rounded,
  ),

  MenuItems(
    title: "InfiniteScroll y Pull",
    subTitle: "Listas infinitas y pull to refresh",
    link: '/infinite',
    icon: Icons.list_alt_rounded,
  ),
];
