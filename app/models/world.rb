class World < ActiveRecord::Base
  has_attached_file :image, styles: { thumb: "300x200" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  has_many :hitboxes, dependent: :destroy

  def get_hidden_characters
    characters = []
    self.hitboxes.each do |h|
      characters << h.character
    end
    return characters
  end
end
