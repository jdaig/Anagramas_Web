class Word < ActiveRecord::Base
  # Remember to create a migration!
  def self.to_canonica(word)
    word.split('').sort.join
  end

  def self.list_canonica(new_word)
    Word.where(anagrama: to_canonica(new_word))
  end

end
