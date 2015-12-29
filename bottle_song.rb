bottles = 99

(bottles + 1).times do
  if bottles > 1
    puts " #{bottles} of beer on the wall, #{bottles} of beer.\nTake one down, pass it around #{bottles - 1}  bottles of beer on the wall"
    bottles -= 1
  elsif bottles == 1
    puts " #{bottles} bottle of beer on the wall, #{bottles} of beer.\nTake one down, pass it around, no more bottles of beer on the wall"
    bottles -=1
  elsif bottles == 0
    puts "No more bottles of beer on the wall, not more bottles of beer.\n Go to the store, buy some more, 99 bottles of beer on the wall"
  end
end
