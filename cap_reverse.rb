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
  Array.new(len){ Cap.new(rand(0..1)) }
end

def count_caps(cap_list)
  cap_dir = cap_list[0].dir?
  front = back = start = 0

  command_list = []
  i = 0
  cap_list.each do |c|
    if c.dir? != cap_dir
      command_list << CapRange.new(start, i-1, c.dir?)
      start = i

      if c.dir? == 1
        front += 1
      else
        back += 1
      end
    else
      i += 1
    end
  end

  # for latest elements
  command_list << CapRange.new(start, i-1, cap_list[-1].dir?)
  if cap_list[-1].dir? == 1
    front += 1
  else
    back += 1
  end
  
  [range: command_list, front: front, back: back]
end
