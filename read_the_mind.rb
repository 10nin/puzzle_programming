def generate_deck
  mark = ['_S', '_H', '_D', '_C']
  nums = (2..10).to_a
  nums.push(*['J', 'Q', 'K', 'A'])
  mark.collect do |m|
    nums.map{ |n| n.to_s + m }
  end
end
