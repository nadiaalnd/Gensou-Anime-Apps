import 'package:flutter/material.dart';
import 'package:gensou/api/get_anime_by_ranking.dart';
import 'package:gensou/core/screens/error_screen.dart';
import 'package:gensou/core/widgets/loader.dart';
import 'package:gensou/models/anime_category.dart';
import 'package:gensou/views/animes_grid_list.dart';

class AnimeGridView extends StatelessWidget {
  const AnimeGridView({
    super.key,
    required this.category,
  });

  final AnimeCategory category;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getAnimeByRankingTypeApi(
        rankingType: category.rankingType,
        limit: 100,
      ),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Loader();
        }

        if (snapshot.data != null) {
          final animes = snapshot.data;

          return AnimesGridList(
            title: category.title,
            animes: animes!,
          );
        }

        return ErrorScreen(error: snapshot.error.toString());
      },
    );
  }
}
