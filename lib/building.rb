require 'pry'

class Building
  attr_reader :units
  def initialize
    @units = []
  end


  def add_unit(unit)
    @units << unit
  end

  # def average_rent
  #   total_rent = 0
  #   @units.map do |unit|
  #    [:monthly_rent] += total_rent
  #    p total_rent
  #  end

  def average_rent(a1, b2)
    (a1.monthly_rent + b2.monthly_rent) / 2.round(2)
  end
  #
  def unit_with_highest_rent
    units = @units
    units.max_by{|unit| :monthly_rent }
  end
  #
  #
end
