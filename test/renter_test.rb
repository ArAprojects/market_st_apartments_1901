require "minitest/autorun"
require "minitest/pride"
require "pry"
require './lib/renter'
require './lib/apartment'


class RenterTest < MiniTest::Test

  def test_a_renter_exists
    jessie = Renter.new("Jessie")

    assert_instance_of Renter, jessie
  end
end
