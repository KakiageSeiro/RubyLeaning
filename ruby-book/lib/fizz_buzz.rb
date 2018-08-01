def fizz_buzz(input)
  if (input % 15).zero?
    'fizzbuzz'
  elsif (input % 5).zero?
    'buzz'
  elsif (input % 3).zero?
    'fizz'
  else
    input.to_s
  end
end

puts '1=' + fizz_buzz(1)
puts '2=' + fizz_buzz(2)
puts '3=' + fizz_buzz(3)
puts '4=' + fizz_buzz(4)
puts '5=' + fizz_buzz(5)
puts '6=' + fizz_buzz(6)
puts '7=' + fizz_buzz(7)
puts '15=' + fizz_buzz(15)
puts '16=' + fizz_buzz(16)
puts '30=' + fizz_buzz(30)
