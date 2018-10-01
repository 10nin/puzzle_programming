class Cap
  def initialize(dir)
    @direction = dir
  end
end

def create_cap_list(len)
  Array.new(len, Cap.new(rand(0..1)))
end

