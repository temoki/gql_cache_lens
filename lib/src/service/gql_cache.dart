enum GqlCacheCategory {
  normalized,
  query,
  mutation;
}

final class GqlCacheMaps {
  const GqlCacheMaps({
    Map<String, dynamic>? normalized,
    Map<String, dynamic>? query,
    Map<String, dynamic>? mutation,
  })  : normalized = normalized ?? const {},
        query = query ?? const {},
        mutation = mutation ?? const {};

  factory GqlCacheMaps.fromJson(
    Map<String, dynamic> json,
  ) {
    var query = <String, dynamic>{};
    final queryValue = json['Query'];
    if (queryValue is Map<String, dynamic>) {
      query = queryValue..removeWhere((k, _) => k == '__typename');
    }

    var mutation = <String, dynamic>{};
    final mutationValue = json['Mutation'];
    if (mutationValue is Map<String, dynamic>) {
      mutation = mutationValue..removeWhere((k, _) => k == '__typename');
    }

    final normalized = json
      ..removeWhere((k, _) => k == 'Query' || k == 'Mutation');

    return GqlCacheMaps(
      normalized: normalized,
      query: query,
      mutation: mutation,
    );
  }

  final Map<String, dynamic> normalized;
  final Map<String, dynamic> query;
  final Map<String, dynamic> mutation;

  Map<String, dynamic> operator [](GqlCacheCategory category) {
    return switch (category) {
      GqlCacheCategory.normalized => normalized,
      GqlCacheCategory.query => query,
      GqlCacheCategory.mutation => mutation,
    };
  }
}
