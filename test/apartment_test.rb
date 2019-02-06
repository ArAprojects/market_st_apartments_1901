require "minitest/autorun"
require "minitest/pride"
require "pry"
require './lib/apartment'
require './lib/renter'

class ApartmentTest < MiniTest::Test

  def test_an_apartment_exists
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_instance_of Apartment, a1
  end

  def test_an_apartment_has_a_number_and_rent_and_bathrooms
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_equal "A1", a1.number
    assert_equal 1200, a1.monthly_rent
    assert_equal 1, a1.bathrooms
  end

  def test_an_apartment_has_bedrooms
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_equal 1, a1.bedrooms
  end

  def test_an_apartment_has_a_renter
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    assert_equal [], a1.renter
    jessie = Renter.new("Jessie")
    a1.add_renter(jessie)
    assert jessie, a1.renter

  end
end
