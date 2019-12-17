require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    i=0
    self.split(/!+|\.|\?/) do |s|
      #puts s
      i+=1
    end
      #puts i
    i
  end
end

#puts "test.".sentence?
# puts"Hi. Hello! Ciao?".count_sentences
#"This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences