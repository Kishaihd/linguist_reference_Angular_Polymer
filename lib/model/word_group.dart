import 'package:angular2/angular2.dart';
import 'package:polymer_elements/iron_flex_layout/classes/iron_flex_layout.dart';
import 'package:polymer_elements/paper_material.dart';


import 'word.dart';
import '../services/logger.dart';

class WordGroup {
  static const List<String> cases = const [
    "Nominative",
    "Accusative",
    "Genetive",
    "Dative",
    "Instrumental",
    "Prepositional"
  ];

  String name;
  List masculine;
  List feminine;
  List neuter;
//  @observable List genderless;

  WordGroup(this.name, [this.masculine, this.feminine, this.neuter]);

  WordGroup.fromMap(String name, Map map) {
    this.name = name;

    if (map["masculine"] != null) {
      masculine = new List.from((map["masculine"] as List).map((Map map) => new Word.fromMap(map)).toList());

      //if (map["feminine"] != null) {
      feminine = new List.from((map["feminine"] as List).map((Map map) => new Word.fromMap(map)).toList());
      //}

      if (map["neuter"] != null) {
        neuter =  new List.from((map["neuter"] as List).map((Map map) => new Word.fromMap(map)).toList());
      }
      log.info("$runtimeType::WordGroup -- $masculine");
    }
//    else {
//      if (map["genderless"] != null) {
//        genderless =  new List.from((map["genderless"] as List).map((Map map) => new Word.fromMap(map)).toList());
//        log.info("$runtimeType::WordGroup -- $genderless");
//      }
//      else {
//        // There was a problem.
//      }
//    }

  }

  @override String toString() => "WordGroup: $name";
}