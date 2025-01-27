require './lib/exhibit'
require 'minitest/autorun'
require 'minitest/pride'

class ExhibitTest < Minitest:: Test

  def test_it_exisits_and_has_attributes
    exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})

    assert_instance_of Exhibit, exhibit
    assert_equal "Gems and Minerals", exhibit.name
    assert_equal 0, exhibit.cost
  end
end
