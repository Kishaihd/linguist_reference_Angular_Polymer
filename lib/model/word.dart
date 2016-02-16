import 'package:angular2/angular2.dart';
import 'package:polymer_elements/iron_flex_layout/classes/iron_flex_layout.dart';
import 'package:polymer_elements/paper_material.dart';

class Word {

  final String word;
  Map<String, String> nominative;
  Map<String, String> accusative;
  Map<String, String> genetive;
  Map<String, String> dative;
  Map<String, String> instrumental;
  Map<String, String> prepositional;

  Word(this.word, [this.nominative, this.accusative, this.genetive, this.dative, this.instrumental, this.prepositional]);

  Word.fromMap(Map map) : this(map["word"], map["nominative"], map["accusative"], map["genetive"], map["dative"], map["instrumental"], map["prepositional"]);

  @override String toString() => "$word";
}