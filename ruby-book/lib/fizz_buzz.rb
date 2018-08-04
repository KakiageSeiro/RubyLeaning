def fizz_buzz(input)
  if (input % 15).zero?
    'fizz_buzz'
  elsif (input % 5).zero?
    'buzz'
  elsif (input % 3).zero?
    'fizz'
  else
    input.to_s
  end
end
