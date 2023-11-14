import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon/model/pokemon_model.dart';

class PakeImage extends StatelessWidget {
  final PokemonModel pokemonImage;
  const PakeImage({super.key, required this.pokemonImage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            'images/pokeball.png',
            width: ScreenUtil().orientation == Orientation.portrait
                ? 0.2.sw
                : 0.3.sh,
            height: ScreenUtil().orientation == Orientation.portrait
                ? 0.2.sw
                : 0.3.sh,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Hero(
            tag: pokemonImage.id!,
            child: CachedNetworkImage(
              imageUrl: pokemonImage.img ?? "",
              width: ScreenUtil().orientation == Orientation.portrait
                  ? 0.2.sw
                  : 0.3.sh,
              height: ScreenUtil().orientation == Orientation.portrait
                  ? 0.2.sw
                  : 0.3.sh,
              placeholder: (context, url) => const CircularProgressIndicator(),
            ),
          ),
        )
      ],
    );
  }
}
