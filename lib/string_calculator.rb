module StringCalculator

  def self.add(string)
    delim = ","
    if string[0..1]=="//"
      delim = string[2]
      string = string[4..1]
    end
    string.gsub!(/\n/, delim)
    return string.to_i unless string.include? ","
    digit_strings = string.split(",")
    digit_strings.inject(0) { |t, s| t + s.to_i }
  end

end
