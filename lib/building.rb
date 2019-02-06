class Building
  attr_reader :units
  def initialize
    @units = []
  end

  def add_unit(apartment)
    @units << apartment
  end

  def average_rent
    average_rent = 0
    @units.each do |unit|
      average_rent += unit.apt_specs[:monthly_rent]
    end
    average_rent.to_f / @units.count
  end

  def occupied_units
    occupied_units = @units.find_all do |unit|
      unit.renter != nil
    end
  end

  def renter_with_highest_rent
    occupied = occupied_units
    highest_rent = occupied.max_by do |unit|
      unit.apt_specs[:monthly_rent]
    end
    highest_rent.renter
  end

  def annual_breakdown
    breakdown = Hash.new
    occupied = occupied_units
    occupied.each do |unit|
      breakdown[unit.renter.name] = unit.annual_rent
    end
    breakdown
  end
end
