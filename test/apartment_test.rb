require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/apartment'
require './lib/renter'

class ApartmentTest < Minitest::Test

  def test_it_exists
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    assert_instance_of Apartment, a1
  end

  def test_it_has_a_number
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    assert_equal "A1", a1.number
  end

  def test_it_has_rent
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    assert_equal 1200, a1.monthly_rent
  end

  def test_it_has_bathrooms
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    assert_equal 1, a1.bathrooms
  end

  def test_it_has_bedrooms
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    assert_equal 1, a1.bedrooms
  end

  def test_renter_is_nil_by_default
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    assert_nil a1.renter
  end

  def test_you_can_add_a_renter
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    jessie = Renter.new("Jessie")
    a1.add_renter(jessie)
    assert_equal jessie, a1.renter
  end

  def test_you_can_calculate_annual_rent
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    assert_equal 14400, a1.annual_rent
  end

end
