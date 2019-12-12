#!/usr/bin/env ruby

class Wallet
  def initialize(coins)
    @coins = coins
  end
  def count_coins

        quarters = @coins / 25
        @coins -= quarters * 25

        dimes = @coins / 10
        @coins -= dimes * 10

        nickels = @coins / 5
        @coins -= nickels * 5

        pennies = @coins

    array = [quarters, dimes, nickels, pennies]
    return array
  end
end
