import 'package:componentes/router/app_routes.dart';
import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';
//import 'package:componentes/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        //elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(menuOptions[index].name),
                leading: Icon(
                  menuOptions[index].icon,
                  color: AppTheme.primary,
                ),
                onTap: () {
                  Navigator.pushNamed(context, menuOptions[index].route);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: AppRoutes.getAppRoutes().length),
    );
  }
}


/*

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: const Text('Nombre de ruta'),
                leading: const Icon(Icons.access_time_outlined),
                onTap: () {
                  Navigator.pushNamed(context, 'card');
                  //pushReplacement destruye la/s ruta/s anterior
                  //se podria usar luego de pantalla de log-in
                  //si vuelvo atras, no deberia llevarme al logeo nuevamente....
                  //Navigator.pushReplacement(context, route);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: 10),
    );
  }
*/