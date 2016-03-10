World.create!([
  {title: "Space", difficulty: "Medium", image: open("https://s3.amazonaws.com/wheres-waldo/+waldo+-+space.jpg") },
  {title: "Ancient Rome", difficulty: "Easy", image: open("https://s3.amazonaws.com/wheres-waldo/waldo+-+ancient+rome.jpg") },
  {title: "Merry Mess-Up", difficulty: "Legendary", image: open("https://s3.amazonaws.com/wheres-waldo/waldo+-+castle.jpg") },
  {title: "Castle", difficulty: "Hard", image: open("https://s3.amazonaws.com/wheres-waldo/waldo+-+castle+2.jpg") },
  {title: "Gobbling Gluttons", difficulty: "Hard", image: open("https://s3.amazonaws.com/wheres-waldo/waldo+-+gobbling+gluttons.jpg") },
  {title: "Toys, Toys, Toys!", difficulty: "Very Hard", image: open("https://s3.amazonaws.com/wheres-waldo/waldo+-+toys.jpg")}
])

Hitbox.create!([
  {world_id: 1, character: "Waldo", x_left: "398.9", x_right: "409.95", y_bottom: "420.48", y_top: "400.48"},
  {world_id: 1, character: "Whitebeard", x_left: "773.95", x_right: "787.95", y_bottom: "386.48", y_top: "361.48"},
  {world_id: 1, character: "Odlaw", x_left: "64.9", x_right: "76.95", y_bottom: "468.484375", y_top: "449.48"},
  {world_id: 2, character: "Waldo", x_left: "406.95", x_right: "424.95", y_bottom: "204.48", y_top: "170.48"},
  {world_id: 2, character: "Wenda", x_left: "955.95", x_right: "966.95", y_bottom: "69.48", y_top: "52.48"},
  {world_id: 2, character: "Whitebeard", x_left: "446.95", x_right: "466.95", y_bottom: "121.48", y_top: "89.48"},
  {world_id: 2, character: "Odlaw", x_left: "40.95", x_right: "52.95", y_bottom: "472.28", y_top: "449.48"},
  {world_id: 3, character: "Odlaw", x_left: "225.9", x_right: "233.9", y_bottom: "400.84", y_top: "384.48"},
  {world_id: 3, character: "Waldo", x_left: "620.95", x_right: "632.95", y_bottom: "438.48", y_top: "422.48"},
  {world_id: 3, character: "Wenda", x_left: "788.9", x_right: "797.95", y_bottom: "194.48", y_top: "177.4"},
  {world_id: 3, character: "Whitebeard", x_left: "385.9", x_right: "396.95", y_bottom: "301.48", y_top: "287.4"},
  {world_id: 5, character: "Whitebeard", x_left: "836.9", x_right: "875.9", y_bottom: "569.4", y_top: "519.4"},
  {world_id: 5, character: "Waldo", x_left: "556.9", x_right: "576.9", y_bottom: "242.4", y_top: "214.4"},
  {world_id: 5, character: "Odlaw", x_left: "393.95", x_right: "406.95", y_bottom: "391.48", y_top: "369.48"},
  {world_id: 5, character: "Wenda", x_left: "382.9", x_right: "391.9", y_bottom: "218.48", y_top: "199.4"},
  {world_id: 6, character: "Wenda", x_left: "313.95", x_right: "329.95", y_bottom: "531.48", y_top: "508.48"},
  {world_id: 6, character: "Odlaw", x_left: "953.95", x_right: "963.95", y_bottom: "247.48", y_top: "223.48"},
  {world_id: 6, character: "Waldo", x_left: "165.9", x_right: "174.9", y_bottom: "452.48", y_top: "438.4"},
  {world_id: 6, character: "Whitebeard", x_left: "789.95", x_right: "796.95", y_bottom: "71.48", y_top: "61.48"},
  {world_id: 4, character: "Waldo", x_left: "160.95", x_right: "168.95", y_bottom: "554.48", y_top: "541.48"},
  {world_id: 4, character: "Wenda", x_left: "751.9", x_right: "759.9", y_bottom: "497.4", y_top: "487.4"},
  {world_id: 4, character: "Odlaw", x_left: "858.95", x_right: "867.9", y_bottom: "538.4", y_top: "526.48"},
  {world_id: 4, character: "Whitebeard", x_left: "283.95", x_right: "290.95", y_bottom: "89.48", y_top: "81.48"},
  {world_id: 1, character: "Wenda", x_left: "287.95", x_right: "298.95", y_bottom: "354.48", y_top: "333.48"}
])

Highscore.create!([
  {name: "travis", time: 47, world_id: 1},
  {name: "tr@verz", time: 77, world_id: 1},
  {name: "TravIs D. Bestever", time: 19, world_id: 1},
  {name: "Guest", time: 11, world_id: 1},
  {name: "Guest", time: 15, world_id: 1},
  {name: "TravIz Dee Best", time: 13, world_id: 1},
  {name: "Trav is #1", time: 11, world_id: 1},
  {name: "travisimo", time: 14, world_id: 2}
])