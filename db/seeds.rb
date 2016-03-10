World.create!([
  {title: "Space", difficulty: "Hard", image_file_name: "open-uri20160308-13329-1ge5be7", image_content_type: "image/jpeg", image_file_size: 2848301, image_updated_at: "2016-03-09 04:01:12"},
  {title: "Ancient Rome", difficulty: "Hard", image_file_name: "open-uri20160308-13329-hporpg", image_content_type: "image/jpeg", image_file_size: 2324513, image_updated_at: "2016-03-09 04:02:00"},
  {title: "Castle", difficulty: "Hard", image_file_name: "open-uri20160308-13329-1xqtscu", image_content_type: "image/jpeg", image_file_size: 3181556, image_updated_at: "2016-03-09 04:06:18"},
  {title: "Castle 2", difficulty: "Hard", image_file_name: "open-uri20160308-13329-1ypfow2", image_content_type: "image/jpeg", image_file_size: 2961649, image_updated_at: "2016-03-09 04:07:16"},
  {title: "Gobbling Gluttons", difficulty: "Hard", image_file_name: "open-uri20160308-13329-1smrbdn", image_content_type: "image/jpeg", image_file_size: 1633594, image_updated_at: "2016-03-09 04:08:26"},
  {title: "Toys, Toys, Toys!", difficulty: "Hard", image_file_name: "open-uri20160308-13590-1dbeg2l", image_content_type: "image/jpeg", image_file_size: 2333392, image_updated_at: "2016-03-09 04:16:54"}
])

Hitbox.create!([
  {world_id: 1, character: "Waldo", x_left: "398.9", x_right: "409.95", y_bottom: "420.48", y_top: "400.48"},
  {world_id: 1, character: "Whitebeard", x_left: "773.95", x_right: "787.95", y_bottom: "386.48", y_top: "361.48"},
  {world_id: 1, character: "Odlaw", x_left: "64.9", x_right: "76.95", y_bottom: "468.484375", y_top: "449.48"},
  {world_id: 2, character: "Waldo", x_left: "406.95", x_right: "424.95", y_bottom: "204.48", y_top: "170.48"},
  {world_id: 2, character: "Wenda", x_left: "955.95", x_right: "966.95", y_bottom: "69.48", y_top: "52.48"},
  {world_id: 2, character: "Whitebeard", x_left: "446.95", x_right: "466.95", y_bottom: "121.48", y_top: "89.48"},
  {world_id: 2, character: "Odlaw", x_left: "40.95", x_right: "52.95", y_bottom: "472.28", y_top: "449.48"}
])

Highscore.create!([
  {name: "travis", time: 47, world_id: 1},
  {name: "tr@verz", time: 77, world_id: 1},
  {name: "TravIs D. Bestever", time: 19, world_id: 1},
  {name: "Guest", time: 11, world_id: 1},
  {name: "Guest", time: 15, world_id: 1},
  {name: "TravIz Dee Best", time: 13, world_id: 1},
  {name: "Trav is #1", time: 11, world_id: 1}
])