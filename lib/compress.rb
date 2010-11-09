class Object

  # Dump an object via YAML and compress it
  def compress
    Zlib::Deflate.deflate(YAML::dump(self))
  end

end

# Re-inflate a compressed object
def inflate_object(obj)
  YAML::load(Zlib::Inflate.inflate(obj))
end
