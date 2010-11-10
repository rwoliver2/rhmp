module RHMP::System

  def ruby187fix
    unless '1.9'.respond_to?(:force_encoding)
      String.class_eval do
        begin
          remove_method :chars
        rescue NameError
          # Do nothing
        end
      end
    end
  end

end
