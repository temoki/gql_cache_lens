import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../service/gql_cache.dart';
import 'app_service_provider.dart';
import 'object_page.dart';

final class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootState();
}

final class _RootState extends State<RootPage>
    with SingleTickerProviderStateMixin {
  _RootState();

  late final TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: GqlCacheCategory.values.length,
      vsync: this,
    );
    super.initState();
  }

  @override
  void didChangeDependencies() {
    AppServiceProvider.of(context).requestGqlCache();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final appService = AppServiceProvider.of(context);
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
            onPressed: appService.requestGqlCache,
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabAlignment: TabAlignment.fill,
          tabs: GqlCacheCategory.values
              .map((category) => Tab(text: category.title))
              .toList(),
        ),
      ),
      body: ListenableBuilder(
        listenable: appService,
        builder: (_, __) {
          final gqlCache = appService.gqlCache;
          return TabBarView(
            controller: _tabController,
            children: GqlCacheCategory.values
                .map((category) => _CacheMapView(gqlCache[category]))
                .toList(),
          );
        },
      ),
    );
  }
}

extension on GqlCacheCategory {
  String get title => switch (this) {
        GqlCacheCategory.normalized => 'Cache',
        GqlCacheCategory.query => 'Query',
        GqlCacheCategory.mutation => 'Mutation',
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
          title: Text(
            entry.key,
            style: GoogleFonts.robotoMono(),
          ),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute<ObjectPage>(
                builder: (_) => ObjectPage(
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
