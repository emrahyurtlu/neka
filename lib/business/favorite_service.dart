import 'package:flutter/material.dart';
import 'package:neka/datalayer/repos/favorite_repo.dart';
import 'package:neka/models/favorite_model.dart';

Future<Icon> favIt(int id) async {
  var favRepo = FavoriteRepo();
  var fav = await favRepo.get(id);
  Icon result = Icon(Icons.favorite);
  if (fav != null) {
    // Unfav
    favRepo.delete(id);
    result = Icon(Icons.favorite_border);
  } else {
    // Fav
    favRepo.insert(FavoriteModel(productId: id));
  }

  return result;
}
