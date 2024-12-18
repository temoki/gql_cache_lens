import 'package:devtools_extensions/devtools_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gql_cache_lens/ui/object_page.dart';

final class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootState();
}

final class _RootState extends State<RootPage>
    with SingleTickerProviderStateMixin {
  _RootState();

  late final TabController _tabController;
  Map<_Tab, Map<String, dynamic>> _cache = {};

  @override
  void initState() {
    _tabController = TabController(length: _Tab.values.length, vsync: this);
    _load().then((cache) => setState(() => _cache = cache));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.center_focus_strong),
            SizedBox(width: 8),
            Text(
              'GraphQL Cache Lens',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              _load().then((cache) => setState(() => _cache = cache));
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabAlignment: TabAlignment.fill,
          tabs: _Tab.values.map((tab) => Tab(text: tab.title)).toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children:
            _Tab.values.map((tab) => _CacheMapView(_cache[tab] ?? {})).toList(),
      ),
    );
  }

  Future<Map<_Tab, Map<String, dynamic>>> _load() async {
    final response = await serviceManager
        .callServiceExtensionOnMainIsolate('gql_cache_lens.load');

    var queryMap = <String, dynamic>{};
    final queryValue = response.json?['Query'];
    if (queryValue is Map<String, dynamic>) {
      queryMap = queryValue..removeWhere((k, _) => k == '__typename');
    }

    var mutationMap = <String, dynamic>{};
    final mutationValue = response.json?['Mutation'];
    if (mutationValue is Map<String, dynamic>) {
      mutationMap = mutationValue..removeWhere((k, _) => k == '__typename');
    }

    final cacheMap = (response.json ?? {})
      ..removeWhere((k, _) => k == 'Query' || k == 'Mutation');

    return {
      _Tab.cache: cacheMap,
      _Tab.query: queryMap,
      _Tab.mutation: mutationMap,
    };
  }
}

enum _Tab {
  cache,
  query,
  mutation;

  String get title => switch (this) {
        _Tab.cache => 'Cache',
        _Tab.query => 'Query',
        _Tab.mutation => 'Mutation',
      };
}

final class _CacheMapView extends StatelessWidget {
  const _CacheMapView(this.cacheMap);

  final Map<String, dynamic> cacheMap;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: cacheMap.length,
      itemBuilder: (_, index) {
        final entry = cacheMap.entries.elementAt(index);
        final dataId = entry.key;
        final object = entry.value;
        return ListTile(
          title: Text(entry.key),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute<ObjectPage>(
                builder: (_) => ObjectPage(
                  cacheMap: cacheMap,
                  dataId: dataId,
                  object: object,
                ),
              ),
            );
          },
        );
      },
      separatorBuilder: (_, __) => const Divider(
        height: 1,
        thickness: 1,
      ),
    );
  }
}
