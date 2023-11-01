import "package:flutter/material.dart";
import 'package:flutter/services.dart';

void main() {
runApp(upperBar()); //MaterialApp
}

MaterialApp upperBar() {
return MaterialApp(
	home: Scaffold(
	appBar: AppBar(
		title: const Text("PeacePath"),
		actions: <Widget>[
		IconButton(
			icon: const Icon(Icons.comment),
			tooltip: 'Comment Icon',
			onPressed: () {},
		), //IconButton
		IconButton(
			icon: const Icon(Icons.settings),
			tooltip: 'Setting Icon',
			onPressed: () {},
		), //IconButton
		], //<Widget>[]
		backgroundColor: const Color(0xFF5B8BDF),
		elevation: 50.0,
		leading: IconButton(
		icon: const Icon(Icons.menu),
		tooltip: 'Menu Icon',
		onPressed: () {},
		),
		//systemOverlayStyle: SystemUiOverlayStyle.light,
	), //AppBar
	), //Scaffold
	debugShowCheckedModeBanner: false, //Removing Debug Banner
);
}
