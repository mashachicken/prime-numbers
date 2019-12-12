class Allergies
  def initialize ()
    @allergies = {1 => 'eggs', 2 => 'peanuts', 4 => 'shellfish', 8 => 'strawberries', 16 => 'tomatoes', 32 => 'chocolate', 64 => 'pollen', 128 => 'cats'}
  end
  def get_allergies(number)
    array = []

    if (@allergies.invert.values).include?(number)
      return [@allergies.fetch(number)]
    end

  end
end
