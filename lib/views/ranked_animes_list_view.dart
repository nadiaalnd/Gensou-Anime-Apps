// import 'package:anime_world_tutorial/widgets/anime_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:gensou/common/styles/paddings.dart';
import 'package:gensou/models/anime.dart';
import 'package:gensou/widgets/anime_list_tile.dart';

class RankedAnimesListView extends StatelessWidget {
  const RankedAnimesListView({
    super.key,
    required this.animes,
  });

  final Iterable<Anime> animes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Paddings.defaultPadding,
      child: ListView.builder(
        itemCount: animes.length,
        itemBuilder: (context, index) {
          final anime = animes.elementAt(index);

          return AnimeListTile(
            anime: anime,
          );
        },
      ),
    );
  }
}
