class Cap
  def initialize(dir)
    @direction = dir
  end

  def flip!
    @direction = @direction ^ 1
  end

  def dir?
    @direction
  end
end

class CapRange
  def initialize(from, to, dir)
    @from = from
    @to = to
    @direction = dir
  end

  def info
    [from: @from, to: @to, dir: @direction]
  end
end

def create_cap_list(len)
  Array.new(len, Cap.new(rand(0..1)))
end

