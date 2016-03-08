class Hitbox < ActiveRecord::Base
  belongs_to :world
  validates :world_id, :character, :x_left, :x_right, :y_top, :y_bottom, presence: true
  validates_inclusion_of :character, in: %w( Waldo Odlaw Whitebeard Wenda )
end
