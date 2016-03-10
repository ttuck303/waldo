class Highscore < ActiveRecord::Base
  belongs_to :world
  validates :world_id, :name, :time, presence: true

end
