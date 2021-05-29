
class Tree {
   int id;
   int max_height;
   int lifespan;
   bool is_indoor;
   String name;
   String plant_url;
   String category;
   

  // vérifier
   

  Tree({
    this.id, this.name, this.max_height, this.lifespan, this.is_indoor, this.plant_url, this.category
  });

  Tree.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        name = json["name"] as String,
        plant_url = json["plant_url"] as String,
        category = json["category"] as String,
        
        max_height = json["max_height"],
        lifespan = json["lifespan"],
        is_indoor = json["is_indoor"] as bool;


    Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'name': name.trim(),
      'plant_url': plant_url.trim(),
      'category': category.trim(),

      'max_height': max_height,
      'lifespan': lifespan,
      'is_indoor': is_indoor,
    };

    return map;
  }

}

