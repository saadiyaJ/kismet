import "package:flutter/material.dart";

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget> actions;
  final Color backgroundColor;
  final double elevation;

  //WIDGET TO BE CALLED
  const CustomAppBar({
    this.title = 'Kismet',
    this.actions = const [],
    this.backgroundColor = Colors.white,
    this.elevation = 0.0,
    Key? key,
  }) : super(key: key);

  //bar constructor and design
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.indigo,
          fontSize: 25,
          fontWeight: FontWeight.w900,
        ),
      ),
      elevation: elevation,
      actions: actions,
    );
  }

  //sets the rectangle size to the proper height of a bar
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
