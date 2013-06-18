# Function definitions first
def menu
  # Clear the screen, and present the user with a menu
  puts `clear`
  puts "***CalcIt***"
  print "(b)asic, (a)dvanced, or (q)uit: "
  gets.chomp.downcase
end

def get_num
  # ask the user for first number
  print "input:"
  gets.chomp.to_f
end

def basic_calc
 # ask the user which operation they want to perform
 print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
 operation = gets.chomp.downcase
 case operation
 when 'a'
   add(get_num, get_num)
 when 's'
   sub(get_num, get_num)
 when 'm'
   mul(get_num, get_num)
 when 'd'
   div(get_num, get_num)
 else
 basic_calc
end
end

#basic method
def add(x, y)
 puts "#{x + y}"
end

def sub(x, y)
 puts "#{x -y}"
end

def mul(x, y)
 puts "#{x - y}"
end

def div(x, y)
 puts "#{x / y}"
end


#advanced methods
def advanced_calc
print"(p)ower, (s)quare-root:"
operation = gets.chomp.downcase
case operation
when 'p'
  power(get_num, get_num)
when 's'
  sqrt(get_num)
else
  advanced_calc
end
end

def  power(x, y)
  puts "#{x} to the power of #{y} equals #{x**y}"
end

def sqrt(x)
  puts "The square-root of #{x} is #{x**(0.5)}"
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
  puts "press any key to continue"
  gets
  response = menu
end