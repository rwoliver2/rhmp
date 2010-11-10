class FileUtils

  # Obtain an MD5 checksum of the file in question
  def self.md5(file)
    Digest::MD5.hexdigest(IO.readlines(file).to_s)
  end

end
