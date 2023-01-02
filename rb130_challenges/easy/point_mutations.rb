# frozen_string_literal: true

# This program finds the hamming distance of two DNA strands.
class DNA
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(distance)
    min_size = [@strand, distance].map(&:size).min
    count = 0
    (0...min_size).each do |idx|
      count += 1 unless @strand[idx] == distance[idx]
    end
    count
  end
end
