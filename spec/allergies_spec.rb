# !/usr/bin/env ruby

require('rspec')
require('allergies.rb')

describe('Allergies#get_allergies') do

  it("Should return the value of an allergy") do
    new_allergy = Allergies.new()
    expect(new_allergy.get_allergies(128)).to(eq(['cats']))
  end
end
