require './lib/museum'
require './lib/exhibit'
require './lib/patron'
require 'minitest/autorun'
require 'minitest/pride'

class MuseumTest < Minitest:: Test

  def test_it_exisits_and_has_attributes
    dmns = Museum.new("Denver Museum of Nature and Science")

    assert_instance_of Museum, dmns
    assert_equal "Denver Museum of Nature and Science", dmns.name
    assert_equal [], dmns.exhibits
  end

  def test_add_exhibits_to_exhibits
    dmns = Museum.new("Denver Museum of Nature and Science")
    gems_and_minerals = Exhibit.new({name: "Gems and Minerals", cost: 0})
    dead_sea_scrolls = Exhibit.new({name: "Dead Sea Scrolls", cost: 10})
    imax = Exhibit.new({name: "IMAX",cost: 15})

    dmns.add_exhibit(gems_and_minerals)
    dmns.add_exhibit(dead_sea_scrolls)
    dmns.add_exhibit(imax)

    exhibit_list = [gems_and_minerals, dead_sea_scrolls, imax]

    assert_equal exhibit_list, dmns.exhibits
  end
end
