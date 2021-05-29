
import 'package:my_app/model/treeModel.dart';


class TreeResponse {
  final List<Tree> trees;
  final String error;
  final Tree tree;

  TreeResponse(this.trees, this.error, this.tree);
TreeResponse.tree(Tree tree)
      : trees =
            List(),
            tree = tree,
        error = "";

  TreeResponse.fromJson(Map<String, dynamic> json)
      : trees =
            (json["Trees"] as List).map((i) => new Tree.fromJson(i)).toList(),
            tree = Tree(),
        error = "";

  TreeResponse.withError(String errorValue)
      : trees = List(),
      tree = Tree(),
        error = errorValue;
}