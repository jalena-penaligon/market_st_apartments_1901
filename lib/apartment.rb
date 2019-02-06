class Apartment
  attr_reader :apt_specs, :renter
  def initialize(apt_specs)
    @apt_specs = apt_specs
    @renter = nil
  end

  def number
    @apt_specs[:number]
  end

  def monthly_rent
    @apt_specs[:monthly_rent]
  end

  def bathrooms
    @apt_specs[:bathrooms]
  end

  def bedrooms
    @apt_specs[:bedrooms]
  end

  def add_renter(new_renter)
    @renter = new_renter
  end

  def annual_rent
    @apt_specs[:monthly_rent] * 12
  end
end
