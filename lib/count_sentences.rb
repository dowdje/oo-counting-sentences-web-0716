require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    sentence_array = self.split("")
    for i in 0...sentence_array.length
      if sentence_array[i] == sentence_array[i + 1] || sentence_array[i] == sentence_array[i - 1]
        sentence_array.delete_at(i)
      end
    end
    sentence_array.count(".") + sentence_array.count("?") + sentence_array.count("!")
  end
end
