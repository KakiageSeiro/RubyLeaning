print 'Text?: '
text = gets.chomp

begin
  print 'Pattaern?: '
  pattern = gets.chomp

  regexp = Regexp.new(pattern)
rescue RegexpError => e
  puts "Invalid pattaern: #{e.message}"
  retry
end

matches = text.scan(regexp)
if matches.size > 0
  puts "Mached: #{matches.join(', ')}"
else
  puts "Nothing matched."
end
