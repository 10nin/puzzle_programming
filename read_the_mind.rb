def generate_deck
  mark = ['_S', '_H', '_D', '_C']
  nums = (2..10).to_a
  nums.push(*['J', 'Q', 'K', 'A'])
  mark.collect do |m|
    nums.map{ |n| n.to_s + m }
  end
end

def assistantOrdersCards(deck)
  puts 'Cards are character strings as shown below.'
  puts "Ordering is: #{deck}"
  cards, cind, cardsuites, cnumbers = [], [], [], []
  numsuites = [0, 0, 0, 0]
  (0..4).each do |i|
    puts "Please give card #{i+1}"
  end
end
  
