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
    d=['.', "[!]+", "?"] #
    # /[]\.!?]/
    #binding.pry

    puts a
    self.split(/[\.!?]/) do |s|
      puts s
    end
    puts self.split(Regexp.union(d)).count

  end
end

#puts "test.".sentence?
# puts"Hi. Hello! Ciao?".count_sentences
"This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences