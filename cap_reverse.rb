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
    {from: @from, to: @to, dir: @direction}
  end
end

def create_cap_list(len)
  Array.new(len){ Cap.new(rand(0..1)) } << nil
end

def count_caps(cap_list)
  front = back = start = 0
  range_list = []

  cap_list.each_with_index do |c, i|
    if c.nil? || c.dir? != cap_list[start].dir?
      range_list << CapRange.new(start, i-1, cap_list[start].dir?)

      if cap_list[start].dir? == 1
        front += 1
      elsif
        back += 1
      end
      start = i
    end
  end  
  {range: range_list, front: front, back: back}
end

def print_cap_list(cap_list)
  cap_list.each do |x|
    printf x&.dir?.to_s + ' '
  end
  puts ''
end

## MAIN
caps = create_cap_list(10)
puts "-- Initial CAPS --"
print_cap_list(caps)
cap_commands = count_caps(caps)
command_mode = 0
if cap_commands[:back] < cap_commands[:front]
  command_mode = 1
end
puts ''

cap_commands[:range].each do |c|
  f, t, d = c.info[:from], c.info[:to], c.info[:dir]
  if d == command_mode
    if f == t
      puts "-- Command: 'Flip! #{f}' --"
    else
      puts "-- Command: 'Flip! from #{f} to #{t}' --"
    end
    
    caps.each_with_index do |x, i|
      if i.between?(f, t)
        x.flip!
      end
    end
    print_cap_list(caps)
  end
end
