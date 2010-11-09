class String

  def capitalize_each
    self.split(" ").each{|word| word.capitalize!}.join(" ")
  end

  def capitalize_each!
    replace capitalize_each
  end

  def each_word
    split(/\s+/)
  end

  def first_words(count)
    each_word.first(count).join(" ")
  end

end
