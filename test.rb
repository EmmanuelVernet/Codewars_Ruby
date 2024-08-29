
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



