# Function definitions first
def menu
  # Clear the screen, and present the user with a menu
  puts `clear`
  puts "***CalcIt***"
  print "(b)asic, (a)dvanced, or (q)uit: "
  gets.chomp.downcase
end

def hold
  puts "press any key to continue"
  stop = gets.chomp
end


def  power
  x = num_1
  puts "... and raise it to the power:"
  y = num_2
  result = x**y
  puts "#{x} to the power of #{y} equals #{result}"
  hold
end

def sqrt(x)
  result = x**(0.5)
  puts "The square-root of #{x} is #{result}"
  hold
end


def num_1
  # ask the user for first number
  print "First number:"
  gets.chomp.to_f
end

def num_2
  # ask the user for second number
  print "Second number:"
  gets.chomp.to_f
end


def basic_calc
 # ask the user which operation they want to perform
 print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
 operation = gets.chomp.downcase
 case operation
 when 'a'
   add(num_1, num_2)
 when 's'
   sub(num_1, num_2)
 when 'm'
   mul(num_1, num_2)
 when 'd'
   div(num_1, num_2)
 else
 basic_calc
end
end

#perform addition
def add(x, y)
 result = x + y
 puts "#{result}"
 hold
end

#perform subtraction
def sub(x, y)
 result = x - y
 puts "#{result}"
 hold
end

#perform multiplication
def mul(x, y)
 result = x * y
 puts "#{result}"
 hold
end

#perform division
def div(x, y)
 result = x / y
 puts "#{result}"
 hold
end



def advanced_calc
print"(p)ower, (s)quare-root:"
operation = gets.chomp.downcase
case operation
when 'p'
  power
when 's'
  sqrt(num_1)
else
  advanced_calc
end
end



# run the app...

response = menu

while response != 'q'
  case response
  when 'b'
    basic_calc
  when 'a'
    advanced_calc
  end

  response = menu
end