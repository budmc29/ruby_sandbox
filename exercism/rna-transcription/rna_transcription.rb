# Given a DNA strand, return its RNA complement
class Complement
  DNA_NUCLEOTIDES = 'GCTA'
  RNA_COMPLEMENT = 'CGAU'

  def self.of_dna(dna_strand)
    return '' unless valid?(dna_strand)

    dna_strand.tr(DNA_NUCLEOTIDES, RNA_COMPLEMENT)
  end

  private

  def self.valid?(dna_strand)
    dna_strand.each_char.all? do |c|
      DNA_NUCLEOTIDES.include?(c)
    end
  end
end

module BookKeeping
  VERSION = 5
end
