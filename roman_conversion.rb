class RomanArabicConversion
  ROMAN_NUMBER_CONV = {
    "I"=> 1,
    "V"=> 5,
    "X"=> 10,
    "L"=> 50,
    "C"=>100,
    "D"=>500,
    "M"=>1000
  }

  def self.get_input
    puts "Welcome to Roman Numeral --> Arabic converted."
    puts "Please enter a Roman numeral string: "
    input = gets.chomp
    converted = convert_roman(input)
    puts "The roman numeral #{input} is #{converted} converted into arabic."
    puts "Thank you come again!"
  end

  def self.convert_roman(input)
    # special rule: if smaller number is in front of bigger,
    # subtract smaller from bigger
    input = input.upcase!
    converted_number = 0
    len = input.length
    i = 0
    while i < len
      char = ROMAN_NUMBER_CONV[input[i]]
      if input[i+1].nil? # for last number
        next_char = 0
      else
        next_char = ROMAN_NUMBER_CONV[input[i+1]]
      end

      if next_char > char
        converted_number -= char
      else
        converted_number += char
      end
      i += 1
    end
    return converted_number
  end
end

RomanArabicConversion.get_input #run program
