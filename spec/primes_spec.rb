# !/usr/bin/env ruby

require('rspec')
require('primes.rb')

describe('Prime#find_primes') do

  it("Should return an array with only prime numbers") do
    primer = Prime.new(19)
    expect(primer.find_primes()).to(eq([2,3,5,7,11,13,17,19]))
  end
  it("Should return an array with only prime numbers") do
    primer = Prime.new(47)
    expect(primer.find_primes()).to(eq([2,3,5,7,11,13,17,19,23,29,31,37,41,43,47]))
  end
end
