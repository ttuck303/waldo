require 'test_helper'

class HitboxTest < ActiveSupport::TestCase

  def setup
    @hitbox = Hitbox.new(world_id: 1, character: "Waldo", x_left: 34.4, x_right: 35.4, y_top: 23.3, y_bottom: 25.6)
  end

  test "should be valid" do
    assert @hitbox.valid?
  end

  test "world should be present" do
    @hitbox.world_id = nil
    assert_not @hitbox.valid?
  end

  test "coordinates should be present" do
    @hitbox.x_left = nil
    assert_not @hitbox.valid?
  end

  test "character should be one of Waldo, Odlaw, or Wizard" do
    @hitbox.character = "Steve"
    assert_not @hitbox.valid?
  end

  test "the truth" do
    assert true
  end
end
