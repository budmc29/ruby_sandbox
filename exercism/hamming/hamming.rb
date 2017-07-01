class Hamming
  def self.compute(first_strand, second_strand)
    raise ArgumentError unless first_strand.size == second_strand.size

    mutation_count = 0
    first_strand.each_char.with_index do |character, index|
      mutation_count += 1 if character != second_strand[index]
    end

    mutation_count
  end
end

module BookKeeping
  VERSION = 2
end
