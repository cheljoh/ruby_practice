class Hamming #zips together two DNA sequencies, counts how many nucleotides are different
  #from exercisms

  VERSION = 1

  def self.compute(string1, string2)
    raise ArgumentError if string1.length != string2.length
    string1, string2 = string1.chars, string2.chars
    combined_pairs = string1.zip(string2)
    hamming_counter = 0
    combined_pairs.each do |array|
      1.times {hamming_counter += 1 if array[0] != array[1]}
    end
    hamming_counter
  end

end

#run as such:
#Hamming.compute("ACG", "ACT")
