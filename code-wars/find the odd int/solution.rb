def find_it(seq)
  seq = seq.sort.chunk{ |x| x }.map(&:last).detect{ |x|  x.length.odd? }
  seq[0]
end
