class Allergies
  def initialize ()
    @allergies =
    {
      1 => 'eggs',
      2 => 'peanuts',
      4 => 'shellfish',
      8 => 'strawberries',
      16 => 'tomatoes',
      32 => 'chocolate',
      64 => 'pollen',
      128 => 'cats'
    }
  end

  def get_allergies(input)
    array = []
    number_array = [128, 64, 32, 16, 8, 4, 2]

    # This finds an exact match and returns the string value
    if (@allergies.invert.values).include?(input)
      return [@allergies.fetch(input)]
    end

    # If the number is odd give them eggs
    if input.odd?()
      array.push(@allergies.fetch(1))
      input -= 1
    end

    # This uses number_array to iterate through the possible values and pushs the strings into the return array
    x = 0
    while x < 7
      if (input - number_array[x]) >= 0
        input -= number_array[x]
        array.push(@allergies.fetch(number_array[x]))
      end
      x += 1
    end
    return array

  end
end
