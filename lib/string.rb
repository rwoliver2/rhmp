class String

  # Add slashes to a string
  def add_slashes
    self.gsub(/['"\\\x0]/,'\\\\\0')
  end
  
  # Convert /n to <br />
  def nl2br
    self.gsub("\n", "<br />\n")
  end

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
    Base64.encode64(self)
  end

  # Return a Base64 decoded version of the string
  def decode_base64
    Base64.decode64(self)
  end

  # Return a Base64 encoded version of the string
  def encode_base64!
    replace Base64.encode64(self)
  end

  # Return a Base64 decoded version of the string
  def decode_base64!
    replace Base64.decode64(self)
  end

  # Escape a string using HTML-escapement
  def escapeHTML
    CGI::escapeHTML(self)
  end

  # Escape a string using HTML-escapement inline
  def escapeHTML!
    replace CGI::escapeHTML(self)
  end

  # Unescape an HTML-escaped string
  def unescapeHTML
    CGI::unescapeHTML(self)
  end

  # Unescape an HTML-escaped string inline
  def unescapeHTML!
    replace CGI::unescapeHTML(self)
  end

end