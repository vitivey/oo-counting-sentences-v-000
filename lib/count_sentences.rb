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
    period_array = self.split(".")
    period_array.map do |sentences|
      if sentences.include?("!")
        sentences.split("!").map do |blanks|
          if !blanks.empty?
            period_array << blanks
          end
        end
      elsif sentences.include?("?")
        sentences.split("?").map do |blanks|
          if !blanks.empty?
            period_array << blanks
          end
        end
      end
      period_array.size
    binding.pry
  end

end
