# require_relative '../../config.ru'

class Word < ActiveRecord::Base
  validates :text, :uniqueness => true
  # Remember to create a migration!
  def anagrams
    anagram_collection = []
    Word.all.each do |word|
      if self.text.downcase.split("").sort == word.text.downcase.split("").sort
        anagram_collection << word
      end
    end
    anagram_collection
  end
end
