def generate_deck
  mark = ['_S', '_H', '_D', '_C']
  nums = ['A']
  nums.push(*(2..10).to_a)
  nums.push(*['J', 'Q', 'K'])
  nums.collect do |n|
    mark.map{ |m| n.to_s + m }
  end.flatten
end

def assistant_orders_cards(deck)
  puts 'Cards are character strings as shown below.'
  puts "Ordering is: #{deck}"
  cards, cind, cardsuites, cnumbers = [], [], [], []
  numsuites = [0, 0, 0, 0]
  (1..5).each do |i|
    puts "Please give card #{i}"
  end
end

assistant_orders_cards generate_deck
