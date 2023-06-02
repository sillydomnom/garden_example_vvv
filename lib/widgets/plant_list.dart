import 'package:flutter/material.dart';
import 'package:garden_test/services/plant_service.dart';
import 'package:provider/provider.dart';

class PlantList extends StatelessWidget {
  PlantList({super.key});

  final plants = ['Rose', 'Gurke', 'Chili', 'Sonnenblume'];

  @override
  Widget build(BuildContext context) {
    final List<Widget> tileList = <Widget>[];
    final plants2 = Provider.of<PlantService>(context).plants;

    for (final plant in plants) {
      tileList.add(
        ListTile(
          title: Text(plant),
          leading: const Icon(Icons.abc),
        ),
      );
    }

    return SizedBox(
      height: 400,
      child: ListView.builder(
        itemBuilder: (context, index) => ListTile(
          title: Text(plants2[index].name),
          leading: Icon(plants2[index].isWatered ? Icons.water_drop : Icons.water_drop_outlined),
        ),
        itemCount: plants2.length,
      ),
    );
  }
}
