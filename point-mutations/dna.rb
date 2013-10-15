class DNA

  attr_reader :dna_string

  def initialize(dna_string)
    @dna_string = dna_string
  end

  def hamming_distance(new_strand)
    matched_pairs_by_index(new_strand).inject(0) do |sum, pair|
      if valid_pair?(pair) && pair[0] != pair[1]
        sum += 1
      else
        sum += 0
      end
    end
  end

  def matched_pairs_by_index(new_dna_strand)
    dna_string.chars.zip(new_dna_strand.chars)
  end

  def valid_pair?(matched_pair)
    !matched_pair[0].nil? && !matched_pair[1].nil?
  end

end
