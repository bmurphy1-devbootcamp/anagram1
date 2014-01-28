require 'pry'

require_relative '../app/models/word.rb'
require 'active_record'

file = File.open('words', 'r')
file.each_line do |line|
  Word.create(:text => line.downcase.chomp, :canonical => line.chomp.downcase.split("").sort.join)
end
