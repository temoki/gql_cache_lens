enum GqlCacheCategory {
  cache,
  query,
  mutation;
}

typedef GqlCacheMap = Map<String, dynamic>;

final class GqlCacheView {
  const GqlCacheView({
    GqlCacheMap? cacheMap,
    GqlCacheMap? queryMap,
    GqlCacheMap? mutationMap,
  })  : cacheMap = cacheMap ?? const {},
        queryMap = queryMap ?? const {},
        mutationMap = mutationMap ?? const {};

  factory GqlCacheView.fromGraphQLFlutter(
    Map<String, dynamic> json,
  ) {
    var queryMap = <String, dynamic>{};
    final queryValue = json['Query'];
    if (queryValue is Map<String, dynamic>) {
      queryMap = queryValue..removeWhere((k, _) => k == '__typename');
    }

    var mutationMap = <String, dynamic>{};
    final mutationValue = json['Mutation'];
    if (mutationValue is Map<String, dynamic>) {
      mutationMap = mutationValue..removeWhere((k, _) => k == '__typename');
    }

    final cacheMap = json
      ..removeWhere((k, _) => k == 'Query' || k == 'Mutation');

    return GqlCacheView(
      cacheMap: cacheMap,
      queryMap: queryMap,
      mutationMap: mutationMap,
    );
  }

  final GqlCacheMap cacheMap;
  final GqlCacheMap queryMap;
  final GqlCacheMap mutationMap;

  GqlCacheMap operator [](GqlCacheCategory category) {
    return switch (category) {
      GqlCacheCategory.cache => cacheMap,
      GqlCacheCategory.query => queryMap,
      GqlCacheCategory.mutation => mutationMap,
    };
  }
}
