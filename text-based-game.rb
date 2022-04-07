def print_options(array)
  array.each_with_index {|option, index| puts "#{index + 1}) #{option}"}
end

def get_option(array)
  puts 'What option do you choose?'
  user_option = gets.chomp.to_i
  if user_option - 1 == -1 || user_option > array.length
    user_death("a random undefined array and a dropped table")
  else
    user_option - 1
  end
end

puts('Start')

puts("What is our hero's name?")
superhero_name = gets.chomp
puts("Who is the hero's nemesis?")
nemesis_name = gets.chomp


def user_death(cause)
  puts "Our hero died from #{cause}!"
  exit
end

#fix user_death superhero_name

puts("#{superhero_name} stands on a rooftop overlooking the grand metropolis of Grand City. It has been a quiet night for the first in long time, that is, until the blaring of sirens rush by as a group of squad cars race by below. Simultaneously a police helicopter buzzes by overhead in the opposite direction. No relaxing tonight. A choice must be made!")

rooftop_options = ["Follow The Police Helicopter, surely it's rushing to something big!", "Follow The Sirens, that many squad cars can only mean trouble!", "Jump Off Building To Streets Below"]

print_options(rooftop_options)
user_option = get_option(rooftop_options)

location_options = ["Jump into the frey! There's no time to waste!", "Scope out the situation. Maybe our hero can learn something!"]

if user_option == 0
  puts "You quickly follow the helicopter, jumping rooftop to rooftop until you land just above the city bank where the helicopter is circling. The helicopter's spotlight illuminates your nemesis, #{nemesis_name}. They're in their newest contraption, some heavily armored suit. Cops have surrounded the outside of the main entrance, but you note a flipped squad car and several wounded officers near #{nemesis_name}'s feet. What shall our hero do?"
  print_options(location_options)
  user_option = get_option(location_options)

elsif user_option == 1
  puts "You quickly follow the squad cars, jumping rooftop to rooftop until you land just above the city's number one sandwich shop, subway, where multiple squad cars have surrounded the building. The squad cars' headlights illuminate the supervillian, #{nemesis_name}! They're in their newest contraption, some heavily armored suit. Cops have surrounded the outside of the main entrance, but you notice a flipped squad car, and several wounded officers near #{nemesis_name}'s feet. What shall our hero do?"
  print_options(location_options)
  user_option = get_option(location_options)
else
  user_death("forgetting they couldn't fly")
end

location_options = ["Go for their legs! They look top-heavy and maybe that can be used against them!", "Charge them head on! They might be built like a tank, but our hero can stop them!"]
location_options_two = ["Go for their legs! They look top-heavy and maybe that can be used against them!", "Charge them head on! They might be built like a tank, but our hero can stop them!", "Perhaps there's another way, MAYBE #{nemesis_name} is onto something."]

if user_option == 0
  puts "#{superhero_name} jumps into action! There's no time to lose, #{nemesis_name} must be defeated!"
  print_options(location_options)
  user_option = get_option(location_options)
elsif user_option == 1
  puts "#{superhero_name} notices a the ledge of a nearby building overlooks the situation. A quick hop and climb is all it takes to be just out of sight. After observing #{nemesis_name}, #{superhero_name} notices that they're top heavy! Their legs have got to be their weakness in that suit!"
  # print something helpful here
  print_options(location_options_two)
  user_option = get_option(location_options_two)
else
  puts "#{superhero_name} was mistaken for a henchman"
  user_death("getting shot by police")
end

ending_options = ["#{nemesis_name} is down! Now's the time to finish for good, no fifth chances! Go for their throat!", "#{nemesis_name} is down! One quick strike to the back should immobilize them in their suit, allowing the police to take them back to jail!"]

if user_option == 0
  puts "Their legs were their weakness! After wearing them down for a few minutes, one swift sweep of the legs took #{nemesis_name} down!"
  print_options(ending_options)
  user_option = get_option(ending_options)
elsif user_option == 1
  puts "Charging at them head-on seemed like a good plan at first, but all #{superhero_name} do was dent #{nemesis_name}'s suit. Fatigue catches up unfortunately and #{nemesis_name} charges when #{superhero_name} is off-balance!"
  user_death("#{nemesis_name} tackling #{superhero_name} breaking all their bones")
  # user dies
elsif user_option == 2
  puts "It took only a brief heart-to-heart with themself, but #{superhero_name} realized that maybe crime DOES pay! Being a superhero is cool and all, but rent is going up and a key to the city is useless when noone can know your true identity! #{superhero_name} jumps past the police line, but at the aid of #{nemesis_name}! 'Finally!' #{nemesis_name} yells as #{superhero_name} flips a car........some time later...... Sitting on a beach, enjoying the ocean breeze, #{superhero_name} relaxes finally. To their left, #{nemesis_name}. Not in that tanky suit, but looking perfect all the same. ------Villian Ending"
  #full enemies to lovers on this one
  exit
end

if user_option == 0
  puts "#{superhero_name} has gone too far! At least that's what the papers reported. Without #{nemesis_name} in the picture anymore, crime dropped significantly, and apparently that's what kept the tabloids going. After the bloody conclusion with #{nemesis_name}, #{superhero_name}'s methods got more brutal. Some called them a menance, others a psychopath in a cape, but to the criminal underground, #{superhero_name} became their boogeyman. -------Antihero Ending"
  #edgelord
elsif user_option == 1
  puts "Everyone can be redeemed, that was #{superhero_name}'s motto years ago and stands true now. With #{nemesis_name} behind bars, Grand City sleeps safely, knowing their defender is watching of it. Sitting on a building ledge overlooking the city's park, #{superhero_name} takes a breath finally. But crime doesn't rest, just as it quieted down, a police helicopter screams on by as smoke rises in the distance. --------Virtuous Hero Ending"
else
  puts "#{nemesis_name} has regained the upperhand!"
  user_death("getting beaten to a pulp")
end
