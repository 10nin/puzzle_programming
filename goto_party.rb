celeb_schedule = [
  # :from <= t < :to
  {from: 6, to: 8, name: 'G.M.Hopper'}
  {from: 7, to: 10, name: 'J.W.Backus'}
  {from: 10, to: 12, name: 'J.McCarthy'}
  {from: 10, to: 13, name: 'D.M.Ritchie'}
  {from: 8, to: 11, name: 'Larry Wall'}
  {from: 9, to: 12, name: 'Guid van Rossum'}
  {from: 6, to: 9, name: 'Matz'}
]

def celebrityDensity
  
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
  t = count.index(count[start..(finish+1)].max)
end
