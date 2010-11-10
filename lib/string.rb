class String

  # Capitalize each word in a string
  def capitalize_each
    self.split(" ").each{|word| word.capitalize!}.join(" ")
  end

  # Capitalize each word in a string
  def capitalize_each!
    replace capitalize_each
  end

  # Return an array of each word in a string
  def each_word
    split(/\s+/)
  end

  # Return the first n words in a string
  def first_words(count)
    each_word.first(count).join(" ")
  end
  
  # Returns a CRC32 value for the string
  def crc32
    Zlib.crc32(self)
  end

  # Return an MD5 digest of the string
  def md5
    Digest::MD5.hexdigest(self)
  end

  # Return a Base64 encoded version of the string
  def encode_base64
    Base64.b64encode(self)
  end

  # Return a Base64 decoded version of the string
  def decode_base64
    Base64.b64decode(self)
  end

  # Return a Base64 encoded version of the string
  def encode_base64!
    replace Base64.b64encode(self)
  end

  # Return a Base64 decoded version of the string
  def decode_base64!
    replace Base64.b64decode(self)
  end

end
