module StringCalculator

    # def self.add(string)
    #   string.gsub!(/\n/, ",")
    #   return string.to_i unless string.include? ","
    #   digit_strings = string.split(",")
    #   digit_strings.inject(0) { |t, s| t + s.to_i }
    # end

# For 7 still broken
  # def self.add(string)
  #   delim, string = extract_delim(string)
  #   string.gsub!(/\n/, delim)
  #   return string.to_i unless string.include? ","
  #   digit_strings = string.split(",")
  #   digit_strings.inject(0) { |t, s| t + s.to_i }
  # end
  #
  # def self.extract_delim(string)
  #   delim = ","
  #   return string unless string[0..1]==  "//"
  #     delim = string[2]
  #     string = string[4..1]
  #   end
  # end

#8 raise error if 8 is negative
  def self.add(string)
    delim, string = extract_delim(string)
    string.gsub!(/\n/, delim)
    return string.to_i unless string.include?delim
    digit_strings = string.split(",")
    digit_strings.inject(0) { |t, s| t + s.to_i }
  end

  def self.extract_delim(string)
    delim = ","
    return string unless string[0..1]==  "//"
      delim = string[2]
      string = string[4..-1]
    end
  end
  def self.to_i with raise(string)
    i = string.to_i
    raise "Oh no!" if i<0
    i
  end
end
