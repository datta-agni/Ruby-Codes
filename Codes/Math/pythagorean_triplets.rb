class PythagoreanTriplesCounter
  def initialize(limit)
    @limit = limit
    @total = 0
    @primitives = 0
    generate_triples(3, 4, 5)
  end

  attr_reader :total, :primitives

  private

  def generate_triples(a, b, c)
    pm = a + b + c
    return if pm > @limit

    @primitives += 1
    @total += @limit / pm

    generate_triples(a - 2 * b + 2 * c, 2 * a - b + 2 * c, 2 * a - 2 * b + 3 * c)
    generate_triples(a + 2 * b + 2 * c, 2 * a + b + 2 * c, 2 * a + 2 * b + 3 * c)
    generate_triples(-a + 2 * b + 2 * c, -2 * a + b + 2 * c, -2 * a + 2 * b + 3 * c)
  end
end

def main()
  pm = 10
  while pm <= 100_000_000
    c = PythagoreanTriplesCounter.new pm
    p [pm, c.total, c.primitives]
    pm *= 10
  end
end

main()
