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
    text_array=self.split(".")
    while text_array.join.include?("!") || text_array.join.include?("?") || text_array.join.include?(".")
    text_array.each do |sentences|
        if sentences.include?("!")
          text_array << sentences.split("!")
          text_array.delete(sentences)
          text_array = text_array.flatten
        elsif sentences.include?("?")
          text_array << sentences.split("?")
          text_array.delete(sentences)
          text_array = text_array.flatten
        else
        end
      end
    end
  text_array.delete("")
  text_array.size

  end

end
