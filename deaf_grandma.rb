ready_to_quit = false #coding challene that imitates a grandma who is hard of hearing
puts "HEY KID!"

@message_array = []

answer = gets.chomp
@message_array << answer

def downcase?(answer)
  answer == answer.downcase
end

def upcase?(answer)
  answer == answer.upcase
end

def two_goodbyes?
  tally = @message_array.count do |message|
    message == "GOODBYE!"
  end
  if tally == 2
    return true
  elsif tally < 2
    return false
  end
end

until ready_to_quit
  if answer == ""
    puts "WHAT?!"
  elsif answer == "GOODBYE!" && !two_goodbyes?
    puts "LEAVING SO SOON?"
  elsif answer == "GOODBYE!" && two_goodbyes?
    ready_to_quit = true
  elsif downcase?(answer)
    puts "SPEAK UP, KID!"
  elsif upcase?(answer)
    puts "NO, NOT SINCE 1946"
  end

  if !ready_to_quit
    answer = gets.chomp
    @message_array << answer
  end
end

puts "LATER, SKATER!"
