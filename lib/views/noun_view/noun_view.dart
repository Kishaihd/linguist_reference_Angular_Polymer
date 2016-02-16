import 'package:angular2/angular2.dart';
import 'package:polymer_elements/iron_flex_layout/classes/iron_flex_layout.dart';
import 'package:polymer_elements/paper_material.dart';

import '../../model/word_group.dart';

@Component(selector: 'noun-view',
    encapsulation: ViewEncapsulation.Native,
    templateUrl: 'noun_view.html',
    directives: const [NgFor, NgStyle]
)

class NounView {
  @Input() Word word;
  @Input() WordGroup wordGroup;
//  @Input() TTTBoard model;
//  @Input() String currentPlayer;
//  @Input() bool interfaceEnabled;

//  @Output() EventEmitter win = new EventEmitter<String>();
//  @Output() EventEmitter tie = new EventEmitter();
//  @Output() EventEmitter move = new EventEmitter();

//  int boardSize;
//  int squareSize;

  NounView();

//  void squareSelected(int squareIndex) {
//    if (interfaceEnabled && model.isSquareEmpty(squareIndex)) {
//      String winner = model.move(squareIndex, currentPlayer);
//
//      if (winner != null) {
//        win.emit(winner);
//      }
//      else if (model.isFull) {
//        tie.emit(null);
//      }
//      else {
//        move.emit(null);
//      }
//    } // end if (interaceEnabled...
//  } // end void squareSelected(...)

//  @Input() void set size(int val) {
//    boardSize = val;
//    squareSize = boardSize ~/3;
//  }

  Map get squareStyles => {
    "width": "${squareSize}px",
    "height": "${squareSize}px",
    "font-size": "${(squareSize * 0.8).round()}px"
  };

} // end class BoardView