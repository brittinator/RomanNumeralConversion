ROMAN_NUMBER_CONV = {
  "I"=> 1,
  "V"=> 5,
  "X"=> 10,
  "L"=> 50,
  "C"=>100,
  "D"=>500,
  "M"=>1000
}

def convert_roman(input)
  # special rule: if smaller number is in front of bigger,
  # subtract smaller from bigger
  return 0 if input.nil? # guard clause
  converted_number = 0

  len = input.length
  i = 0
  while i < len
    char = ROMAN_NUMBER_CONV[input[i]].to_i
    if input[i+1].nil? # for last number
      next_char = 0
    else
      next_char = ROMAN_NUMBER_CONV[input[i+1]].to_i
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

puts "#{convert_roman("I")}"
puts "#{convert_roman("III")}"
puts "#{convert_roman("IV")}"
puts "#{convert_roman("IX")}"
puts "#{convert_roman("XI")}"
puts "#{convert_roman("MMXIV")}"
puts "#{convert_roman("MCMIV")}"
