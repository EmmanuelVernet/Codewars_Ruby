
#comment
# multi comment short cut in VS code => shift + option + A OR shift + alt +A
# ctrl + J -> opens and closes terminal + focus
#ctrl + alt + N -> runs file in terminal
=begin
  multine comment
  "string #{}"
=end
=begin 
Opening and closing left panel for file structure
Ctrl + B // Windows and Linux
Cmd + B // Mac
=end

=begin
print "Thtring, pleathe!: "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
else
  puts "Nothing to do here!"
end

puts "Your string is: #{user_input}"
=end

=begin
def high_and_low(numbers)
  num_arr = [] #init empty arr
  nums = numbers.split.each{|i| num_arr.push(i)}.map(&:to_i).minmax.reverse #split string, loop, append to arr, convert to int
  print(num_arr)
end

high_and_low("8 3 -5 42 -1 0 0 -9 4 7 4 -4")
=end

=begin
def solution(digits)
  arr = []
  nums =  digits.split('').each_cons(5).max.join.to_i #digits.split.map(&:to_i).each_cons(5)
  print nums


end

solution("12345678909125")

1) .split('') to access *each* digit as a substring

2) .each_cons() to go through a set of consecutive N elements,
  in this case it goes through each set of 5 numbers.

3) .max to return an array containing the maximum N elements in the enumerable.

4) .join to return the string which is created by converting each element of
  the array to a string

5) to_i converts the value of the number to int.
=end

=begin
def longest(a1, a2)
  puts (a1+a2).chars.uniq.sort.join#.sort.uniq.join("")

end

longest("xyaabbbccccdefww", "xxxxyyyyabklmopq")
=end

=begin
def split_the_bill(x)
  new_hash = {}
  sum = x.sum{|k,v| v}/(x.length)
  x.each do |k,v|
    if v <= sum
      x[k] = v-sum
    elsif
      v >= sum
      x[k] = v - sum
    else
      x[k] = v.to_i
    end
  end
end

split_the_bill({'A'=>20, 'B'=>15, 'C'=>10})
=end

=begin
def get_grade(s1, s2, s3)
  avg = (s1+s2+s3)/3
  if avg>=90
    return "A"
  elsif avg <= 80 && avg <90
    return "B"
  elsif avg <= 70 && avg <80
    return "C"
  elsif avg <= 60 && avg <70
    return "D"
  else
    return "F"
  end
end
get_grade(95, 90, 93)
=end

=begin
def square_sum(numbers)
  #numbers.each{|n| sum += n**2}
  n = numbers.map { |e| e ** 2 }.sum
  puts n
end
square_sum([0, 3, 4, 5])
=end
=begin
def square_digits num
  puts num.to_s.chars.map{|x| x.to_i**2}.join.to_i
end

square_digits(3212)
=end

=begin
def filter_list(l)
  # return a new list with the strings filtered out
  #puts l.each{|i| i.is_a?(Integer) } #unless i.to_s
  puts l.grep(Integer)
end

filter_list([1,2,'a','b'])
=end

=begin
def get_middle(s)
  #puts s.chars.length/2
  puts s[s.length/2] if s.length.odd?
  puts s[s.length/2-1] + s[s.length/2]
end

#get_middle("testing")
get_middle("middle")
=end

=begin
def is_isogram(string)
  puts string.downcase.chars.uniq.length == string.downcase.length
end

is_isogram("isogram")
#is_isogram("Dermatoglyphics")
is_isogram("aba")
is_isogram("moOse")
is_isogram("isIsogram")
is_isogram("")
=end



=begin
def XO(str)

  #str.scan(/[xo]/i).length.even? #positive lookahead
  #str.scan(/[^xo]/i) #negative lookahead

  def XO(str)
    return true if str.downcase.count("o") == str.downcase.count("x")
    false
  end
  #condition ? expression_if_true : expression_if_false

end

XO('xxxoo')
XO('xxxoo')
XO('xxOo')
XO('zpzpzpzpzp')
=end

=begin 
def is_square(x)
  if x == 0
    puts true
  elsif x == -1
    puts false
  elsif x >= 0
    puts Math.sqrt(x) % 1 == 0
  end
end

#Better solution
def is_square(x)
  x < 0 ? false : Math.sqrt(x) % 1 == 0
end

#is_square  (0)
#is_square  (3)
is_square (4)
#is_square (26)
=end

=begin 
def accum(s)
  # for the length of the string, multiply letter*(index*1). You need to loop over the string and get the index with each_with_index
	puts s.chars.each_with_index.map{ |letter, index| (letter*(index+1)).capitalize }.join("-")
  
end

accum("ZpglnRxqenU")
#accum("NyffsGeyylB")
#accum("MjtkuBovqrU")
#accum("EvidjUnokmM")
#accum("HbideVbxncC") 
=end


=begin 
class String
  def toJadenCase
    self.split(" ").map{|word| word.capitalize}.join(" ")
  end
end

str = "How can mirrors be real if our eyes aren't real";
puts str.toJadenCase()
=end

=begin 
def maskify(cc)
  # your beautiful code goes here
  if cc.length > 4
    cc[0..-5] = "#"*(cc.length-4)+cc[-4..-1] 
    # cc[0..-5] = "from the first character (index 0) to the fifth-to-last character". You start at -1 and not -0. 
    # cc[0..-5] gives us the substring "123456" (all but the last 4 characters).
    # cc.length-4 gives us the number 6 (10 minus 4).
  else
    cc
  end
end

#better solution
def maskify(cc)
  puts cc.chars.each_with_index.map{|x,i| i < cc.length - 4 ? '#' : x}.join
end


maskify('4556364607935616')
maskify('1')
maskify('11111')
maskify('111111') 
=end

=begin 
def sum_two_smallest_numbers(numbers)
  #Your code here
  numbers = numbers.sort
  return numbers[0..1].sum
end

#other solution
def sum_two_smallest_numbers(numbers)
  #Your code here
  return numbers.min(2).sum
end

sum_two_smallest_numbers([25, 42, 71, 12, 18, 22]) 
=end

=begin def to_camel_case(str)
  if str.empty?
    return str    
  elsif str[0] == str[0].downcase
    arr = str.split(/[^a-zA-Z]+/)
    arr[1..-1] = arr[1..-1].map(&:capitalize)
    p arr.join
  else
    p str.split(/[^a-zA-Z]+/).map(&:capitalize).join
  end
end 


#better solution
def to_camel_case(str)
  p str.split(/[^a-zA-Z]+/).each_with_index.map { |word, i| i == 0 && str[0] == str[0].downcase ? word : word.capitalize }.join
end

to_camel_case("the_stealth_warrior")
=end


=begin 
def solution(str)
  # your code here
  if str.length == 0
    p [] 
  elsif str.length.odd?
    str = str+"_"
    p str.chars.each_slice(2).map(&:join)
  else
    p str.chars.each_slice(2).map(&:join)
  end

end

# two solutions for better splitting pairs
def solution str
  (str + '_').scan /../ # Here you always add the underscore but only output character pairs in array
end

def solution(str)
  str.chars.each_slice(2).map { |d| d.length == 2 ? d.join : d.join+'_' }
end

solution("abc")
solution("abcd")
solution("abcdef")
solution("abcdefg")
solution("") 
=end


=begin 
def spin_words(string)
  #TODO -> return all words that have five or more letters reversed 
  p string.split(" ").map{|v| v.length >=5 ? v.reverse : v}

end

spin_words("Hey fellow warriors") 
=end


=begin 
def likes(names)
  #your code here
  if names.length == 0
    p "no one likes this"
  elsif names.length == 1
    p "#{names[0]} likes this"
  elsif names.length == 2
    p "#{names[0]} and #{names[1]} like this"
  elsif names.length > 2 and names.length <= 3 
    p "#{names[0]}, #{names[1]} and #{names[2]} like this"
  elsif names.length >= 4
    p "#{names[0]}, #{names[1]} and #{names.length-2} others like this"
  end
end

# two other possible solutions
def likes(names)
  case names.size
  when 0 
    "no one likes this"
  when 1 
    "#{names[0]} likes this"
  when 2
    "#{names[0]} and #{names[1]} like this"
  when 3
    "#{names[0]}, #{names[1]} and #{names[2]} like this"
  else
    "#{names[0]}, #{names[1]} and #{names.size - 2} others like this"
  end
end

def likes(names)
  return "no one likes this" if names.length == 0
  return "#{names.first} likes this" if names.length == 1
  return "#{names.first} and #{names.last} like this" if names.length == 2
  return "#{names.first}, #{names[1]} and #{names.last} like this" if names.length == 3
  return "#{names.first}, #{names[1]} and #{names.length-2} others like this"
end

likes([])
likes(['Peter'])
likes(['Jacob', 'Alex'])
likes(['Max', 'John', 'Mark'])
likes(['Alex', 'Jacob', 'Mark', 'Max']) 
=end


=begin 
def find_it(seq)
  p seq.find{ |n| seq.count(n).odd? } # .find (or .detect) finds the first occurence of n with a truthy value. Here, you find the first count of n that is odd and return n
end 


# other solutions
def find_it(seq)
  seq.uniq.each{|x| return x if seq.count(x).odd?}
end

def find_it(seq) 
  seq.reduce(:^) #Needs further explanation on how it works
end

find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])

=end

=begin
def array_diff(a, b)
  #your code here
  p a-b
end

array_diff([1,2,3], [1,2])

def create_phone_number(numbers)
  #TODO
  #p numbers[0..1]
  p "(#{numbers[0..2].join}) #{numbers[3..5].join}-#{numbers[6..9].join}"

end

#other solution
def createPhoneNumber(array)
  '(%d%d%d) %d%d%d-%d%d%d%d' % array # using string formatting
end

def createPhoneNumber(digits)
  area_code, prefix, *extension = digits.each_slice(3).map(&:join) # digit blocks with variables
  "(#{area_code}) #{prefix}-#{extension.join}"
end


create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
=end

=begin 
def duplicate_count(text)
  #your code here
  new_text = text.downcase.split("") # init var with new split in array
  new_text.uniq.count{|n| new_text.count(n)>1} # select uniques, then loop over new_text split array and return if > 1
  
end

 # Better Solution
def duplicate_count(text)
  ('a'..'z').count { |c| text.downcase.count(c) > 1 }
end


duplicate_count("abcdeaB")
#duplicate_count("Indivisibilities")
#duplicate_count("abcdeaa")

=end

=begin 
def digital_root(n)
  root = n.to_s.chars.map(&:to_i).sum
  root > 9 ? digital_root(root) : root #reuse the function call inside if root is more than 9

end

digital_root(493193)
=end

=begin 
def find_outlier(integers)
  odd_num = []
  even_num = []
  integers.each{|n| n.odd? ? odd_num.push(n) : even_num.push(n) }
  odd_num.length == 1 ? odd_num[0] : even_num[0] # condition ? if_true : if_false

end

find_outlier([1, 2, 3])
find_outlier([0, 1, 2])

#Better solution
def find_outlier(integers)
  integers.count(&:even?) > 1 ? integers.find(&:odd?) : integers.find(&:even?)
end

def find_outlier(integers)
  odd, even = integers.partition(&:odd?)
  odd.length > 1 ? even[0] : odd[0]
end

=end

=begin 
def is_valid_walk(walk)
  if walk.length == 10 && walk.count('n') == walk.count('s') && walk.count('w') == walk.count('e')
    p true
  else
    p false
  end
end
is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) #true
is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) #false

#Other solution
def isValidWalk(walk)
  walk.length == 10 and walk.count('s') == walk.count('n') and walk.count('e') == walk.count('w')
end

=end

=begin 
def narcissistic?(value)
  power = value.to_s.length
  true ? value.digits.map{|d| d**power}.sum == value : false
end

#Other solution
def narcissistic?( value )
  value.digits.sum {|d| d ** value.to_s.size} == value
end

narcissistic?(1633)#false
narcissistic?(153)#true

=end












