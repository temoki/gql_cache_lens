import 'package:flutter/material.dart';

final class ObjectPage extends StatelessWidget {
  const ObjectPage({
    required this.cacheMap,
    required this.dataId,
    required this.object,
  });

  final Map<String, dynamic> cacheMap;
  final String dataId;
  final dynamic object;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dataId),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(object.toString()),
          ),
        ],
      ),
    );
  }
}
