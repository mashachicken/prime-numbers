# !/usr/bin/env ruby

require('rspec')
require('coins.rb')

describe('Wallet#count_coins') do

  it("win") do
    new_wallet = Wallet.new(12)
    expect(new_wallet.count_coins).to(eq([0, 1, 0, 2]))
  end
end
