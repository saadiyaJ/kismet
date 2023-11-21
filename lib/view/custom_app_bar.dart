import "package:flutter/material.dart";



class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{

  final String title;
  final List<Widget>actions;
  final Color backgroundColor;
  final double elevation;



  const CustomAppBar({
    this.title= 'Kismet',
    this.actions = const[],
    this.backgroundColor= Colors.white,
    this.elevation = 0.0,
    Key? key,
  }) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      title:  Text(
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

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
