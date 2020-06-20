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
    ans = self.split(/\.|\?|\!/)

    final = ans.delete_if do |w|
      w.size < 2
    end
  
    final.size   
      # self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size   
  end
end