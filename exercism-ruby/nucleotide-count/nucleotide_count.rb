class Nucleotide
  NUCLEOTIDES = %w(A T C G).freeze

  attr_reader :strand

  def self.from_dna(strand)
    Nucleotide.new(strand)
  end

  def initialize(strand)
    raise ArgumentError if strand =~ /[^ATCG]/
    @strand = strand
  end

  def histogram
    blank_hash = {"A"=>0, "T"=>0, "C"=>0, "G"=>0}
    strand.chars.each_with_object(blank_hash) do |nucleotide, counts|
      counts[nucleotide] += 1
    end
  end

  def count(nucleotide)
    histogram[nucleotide]
  end
end
