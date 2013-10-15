class Binary

  attr_reader :binary_string

  def initialize(binary_string)
    @binary_string = binary_string
  end

  def to_decimal
    total = 0
    if binary_string.chars.all? {|digit| valid?(digit)}
      reversed_number_values.each_with_index do |number, index|
        total += number * (2**index)
      end
    end
    return total
  end

  def reversed_number_values
    binary_string.chars.reverse.collect {|value| value.to_i}
  end

  def valid?(digit)
    digit == '0' || digit == '1'
  end

end
