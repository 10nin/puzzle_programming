celeb_schedule = [
  # :from <= t < :to
  {from: 6, to: 8, name: 'G.M.Hopper'},
  {from: 7, to: 10, name: 'J.W.Backus'},
  {from: 10, to: 12, name: 'J.McCarthy'},
  {from: 10, to: 13, name: 'D.M.Ritchie'},
  {from: 8, to: 11, name: 'Larry Wall'},
  {from: 9, to: 12, name: 'Guid van Rossum'},
  {from: 6, to: 9, name: 'Matz'}
]

def celebrityDensity(schedule, start, finish)
  count = Array.new(finish+1, 0)
  (start..(finish+1)).each do |x|
    count[x] = 0
    schedule.each do |c|
      if c[:from] <= x && x < c[:to]
        count[x] += 1
      end
    end
  end
  count
end

def bestTimeToParty(schedule)
  start = schedule[0][:from]
  finish = schedule[0][:to]

  schedule.each do |c|
    start = (c[:from] < start ? c[:from] : start)
    finish = (c[:to] < finish ? finish : c[:to])    
  end

  count = celebrityDensity(schedule, start, finish)
  maxcount = count[start..(finish+1)].max
  t = count.index(maxcount)

  puts "Best time to attend the party is at #{t} o'clok : #{maxcount} celebrities will be attending!"
end

bestTimeToParty(celeb_schedule)
