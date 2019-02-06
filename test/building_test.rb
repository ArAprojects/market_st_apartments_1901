require "minitest/autorun"
require "minitest/pride"
require "pry"
require './lib/apartment'
require './lib/renter'
require './lib/building'


class BuildingTest < MiniTest::Test

  def test_a_building_exists
    building = Building.new

    assert_instance_of Building, building
  end

  def test_building_can_add_units
    building = Building.new
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    b2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})

    assert_equal [], building.units
    building.add_unit(a1)
    building.add_unit(b2)
    assert_equal [a1, b2], building.units
  end

  def test_building_has_an_average_rent
    building = Building.new
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    b2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    building.add_unit(a1)
    building.add_unit(b2)

    assert_equal 1099.5, building.average_rent(a1, b2)
  end

  def test_which_unit_has_the_highest_rent
    building = Building.new
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    b2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    building.add_unit(a1)
    building.add_unit(b2)

    assert_equal a1, building.unit_with_highest_rent

  end
end
