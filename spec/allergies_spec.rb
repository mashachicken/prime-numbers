# !/usr/bin/env ruby

require('rspec')
require('allergies.rb')

describe('Allergies#get_allergies') do

  it("Should return the value of an exact allergy") do
    new_allergy = Allergies.new()
    expect(new_allergy.get_allergies(128)).to(eq(['cats']))
  end
  it("Should add eggs if the number is odd") do
    new_allergy = Allergies.new()
    expect(new_allergy.get_allergies(1)).to(eq(['eggs']))
  end
  it("Should return an array with multiple allergies: 'eggs' 'cats'") do
    new_allergy = Allergies.new()
    expect(new_allergy.get_allergies(129)).to(eq(['eggs', 'cats']))
  end
  it("Should return an array with multiple allergies: 'eggs' 'strawberries'") do
    new_allergy = Allergies.new()
    expect(new_allergy.get_allergies(9)).to(eq(['eggs', 'strawberries']))
  end
  it("SShould return an array with multiple allergies: 'strawberries' 'peanuts'") do
    new_allergy = Allergies.new()
    expect(new_allergy.get_allergies(10)).to(eq(['strawberries', 'peanuts']))
  end
end
