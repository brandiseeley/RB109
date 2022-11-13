### Question 1:
### What will the following code print? Why?

def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep


### Question 2:
### What does the following code return? What does it output? Why? What concept does it demonstrate?

a = 4
b = 2

2.times do |a|
  a = 5
  puts a
end

puts a
puts b


### Question 3:
### How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end


### Question 4:
### Our predict_weather method should output a message indicating whether a sunny or cloudy day 
# lies ahead. However, the output is the same every time the method is invoked. Why? Fix the 
# code so that it behaves as expected.

def predict_weather
  sunshine = ['true', 'false'].sample
  
  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end


### Question 5:
### What is the return value of map in the following code? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end


### Question 6:
### What will the following code print? Why?

def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number


### Question 7:
### The following code throws an error. Find out what is wrong and think about how you would fix it.

colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i > colors.length
  
  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end
  
  i += 1
  
end


### Question 8:
### What does the following code return? What does it output? Why? What concept does it demonstrate?

arr = [1, 2, 3, 4]

counter = 0
sum = 0

loop do
  sum += arr[counter]
  counter += 1
  break if counter == arr.size
end 

puts "Your total is #{sum}"


### Question 9:
### What is `a`? What if we called `map!` instead of `map`?

def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
test(a)


### Question 10:
### What does the following code return? What does it output? Why? What concept does it demonstrate?

def plus(x, y)
  x = x + y
end

a = 3
b = plus(a, 2)

puts a
puts b


### Question 11:
### What values do `s` and `t` have? Why?

def fix(value)
  value.upcase!
  value.concat('!')
  value
end

s = 'hello'
t = fix(s)


### Question 12:
### What is the return value of each_with_object in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end


### Question 13:
### What does the following code return? What does it output? Why? What concept does it demonstrate?

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.select do |n| 
  n + 1
  puts n
end
p new_array


### Question 14:
### Explain the Hash#any? method and what it's doing in this code.

{ a: "ant", b: "bear", c: "cat" }.any? do |key, value|
  value.size > 4
end


### Question 15:
### We want to iterate through the numbers array and return a new array containing only the even numbers. 
# However, our code isn't producing the expected output. Why not? How can we change it to produce the expected result?

numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.map do |n|
  n if n.even?
end

p even_numbers # expected output: [2, 6, 8]


### Question 16:
### What will the following code print, and why?

a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a


### Question 17:
### The output of the code below tells you that you have around $70. However, 
# you expected your bank account to have about $238. What did we do wrong?

# Financially, you started the year with a clean slate.

balance = 0

# Here's what you earned and spent during the first three months.

january = {
  income: [ 1200, 75 ],
  expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
}

february = {
  income: [ 1200 ],
  expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
  income: [ 1200, 10, 75 ],
  expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
}

# Let's see how much you've got now...

def calculate_balance(month)
  plus  = month[:income].sum
  minus = month[:expenses].sum
  
  plus - minus
end

[january, february, march].each do |month|
  balance = calculate_balance(month)
end

puts balance


### Question 18:
### What does the following code return? What does it output? Why? What concept does it demonstrate?

a = 4
b = 2

loop do
  c = 3
  a = c
  break
end

puts a
puts b


### Question 19:
### We started writing an RPG game, but we have already run into an error message. Find the problem and fix it.

# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase

player.merge(character_classes[input])

puts 'Your character stats:'
puts player


### Question 20:
### Explain Hash#each_with_object method and what it's doing in this code.

{ a: "ant", b: "bear", c: "cat" }.each_with_object([]) do |pair, array|
  array << pair.last
end


### Question 21:
### What will the following code print, and why?

a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a


### Question 22:
### Magdalena has just adopted a new pet! She wants to add her new dog, Bowser, to the pets hash. 
# After doing so, she realizes that her dogs Sparky and Fido have been mistakenly removed. Help 
# Magdalena fix her code so that all three of her dogs' names will be associated with the 
# key :dog in the pets hash.

pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets[:dog] = 'bowser'

p pets #=> {:cat=>"fluffy", :dog=>"bowser", :fish=>"oscar"}

