require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "items must have quantity greater than zero" do
    assert_no_difference -> { Item.count } do
      item = Item.create(name: "Banana", quantity: 0)

      assert item.new_record?
      assert item.invalid?
    end
  end
end
