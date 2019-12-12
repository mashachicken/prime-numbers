class Prime
  def initialize (input)
    @input_array = Array(2..input)
    # @input = input
  end

  def find_primes()
    prime = 2.0

    while prime < @input_array.length
      @input_array.each do |number|
        if (number%prime == 0.0) && (number.to_f != prime)
          @input_array.delete(number)
        end
      end
      prime += 1
    end

    return @input_array.map!(&:to_i)
  end

end
