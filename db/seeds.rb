require_relative '../app/models/word'

file = File.open('../words', 'r')
file.each_line do |line|
  Word.create!(line.chomp)
end
