void main(List<String> args) {
  var player =
      Player()
        ..id = 'iueau939yahh'
        ..name = 'Leonardo'
        ..level = 1;
  /* 
  Same as:
  var player = Player();
  player.id = 'iueau939yahh';
  player.name = 'Leonardo';
  player.level = 1;
  */
  print(player);
}

class Player {
  String id = '';
  String? name;
  int? level;
}
