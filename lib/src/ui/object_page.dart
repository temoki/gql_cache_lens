import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final class ObjectPage extends StatelessWidget {
  const ObjectPage({
    super.key,
    required this.normalizedCacheMap,
    required this.dataId,
    required this.object,
  });

  final Map<String, dynamic> normalizedCacheMap;
  final String dataId;
  final dynamic object;

  @override
  Widget build(BuildContext context) {
    final object = this.object;
    final Map<String, dynamic> objectMap;
    if (object is Map) {
      objectMap = object.map((k, v) => MapEntry('$k', v));
    } else if (object is List) {
      objectMap = object.asMap().map((k, v) => MapEntry('[$k]', v));
    } else {
      objectMap = <String, dynamic>{object.toString(): null};
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(dataId),
      ),
      body: ListView.builder(
        itemCount: objectMap.length,
        itemBuilder: (_, index) => _ObjectTile(
          normalizedCacheMap,
          objectMap.entries.elementAt(index),
        ),
      ),
    );
  }
}

final class _ObjectTile extends StatelessWidget {
  const _ObjectTile(this.normalizedCacheMap, this.entry, {this.level = 0});

  final Map<String, dynamic> normalizedCacheMap;
  final MapEntry<String, dynamic> entry;
  final int level;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final keyStyle = GoogleFonts.robotoMono();
    final valueStyle = keyStyle.copyWith(color: colorScheme.primary);
    final padding = EdgeInsets.only(left: 16.0 + 24.0 * level, right: 16);
    final key = entry.key;
    final value = entry.value;
    if (value is Map) {
      return ExpansionTile(
        tilePadding: padding,
        title: Text(key, style: keyStyle),
        children: value.entries
            .map(
              (childEntry) => _ObjectTile(
                normalizedCacheMap,
                MapEntry('${childEntry.key}', childEntry.value),
                level: level + 1,
              ),
            )
            .toList(),
      );
    } else if (value is List) {
      return ExpansionTile(
        tilePadding: padding,
        title: Text(key, style: keyStyle),
        children: value
            .asMap()
            .entries
            .map(
              (childEntry) => _ObjectTile(
                normalizedCacheMap,
                MapEntry('[${childEntry.key}]', childEntry.value),
                level: level + 1,
              ),
            )
            .toList(),
      );
    }
    final refObject = key == r'$ref' ? normalizedCacheMap[value] : null;
    return ListTile(
      contentPadding: padding,
      title: Text(key, style: keyStyle),
      subtitle: (value != null) ? Text('$value', style: valueStyle) : null,
      onTap: (refObject != null)
          ? () => Navigator.of(context).push(
                MaterialPageRoute<ObjectPage>(
                  builder: (_) => ObjectPage(
                    normalizedCacheMap: normalizedCacheMap,
                    dataId: '$value',
                    object: refObject,
                  ),
                ),
              )
          : null,
    );
  }
}
