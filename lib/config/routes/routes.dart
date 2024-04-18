import 'package:flutter/cupertino.dart';

import '/common/widgets/network_image_view.dart';
import '/core/screens/error_screen.dart';
import '/models/anime_category.dart';
import '/screens/category_animes_screen.dart';
import '/screens/home_screen.dart';

Route onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case CategoryanimesScreen.routeName:
      final category = settings.arguments as AnimeCategory;
      return _cupertinoRoute(
        view: CategoryanimesScreen(
          category: category,
        ),
      );

    case HomeScreen.routeName:
      final index = settings.arguments as int?;
      return _cupertinoRoute(
        view: HomeScreen(
          index: index,
        ),
      );

    case NetworkImageView.routeName:
      final imageUrl = settings.arguments as String;
      return _cupertinoRoute(
        view: NetworkImageView(
          url: imageUrl,
        ),
      );

    default:
      return _cupertinoRoute(
        view: const ErrorScreen(
          error: 'The route you entered doesn\'t exist',
        ),
      );
  }
}

CupertinoPageRoute _cupertinoRoute({
  required Widget view,
}) {
  return CupertinoPageRoute(
    builder: (_) => view,
  );
}
