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
    period_array.each do |sentences|
      if sentences.include?("!")
            sentences.split("!").map do |blanks|
            period_array << blanks if !blanks.empty?
            end
      elsif sentences.include?("?")
            sentences.split("?").map do |blanks|
            period_array << blanks if !blanks.empty?
            end
      else
        return period_array.size
      end
      # period_array.size
    binding.pry
    end
end
end
