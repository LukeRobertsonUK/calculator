require 'pry'
require 'pry-debuger'

def menu
  puts `clear`
  puts "***CalcIt***"
  print "(b)asic, (a)dvanced, (e)xotic, or (q)uit: "
  gets.chomp.downcase
end

def get_num
  print ">>>"
  gets.chomp.to_f
end

def basic_calc
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

#basic methods
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
print"(p)ower, (s)quare-root: "
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

#exotic methods
def exotic_calc
  print"(m)ortgage, (b)ody-mass-index, (t)rip-cost: "
  operation = gets.chomp.downcase

  case operation
  when 'm'
    mortgage_calc
  when 'b'
    bmi
  when 't'
    trip_cost
  else
    exotic_calc
end
end

def mortgage_calc
  puts "WELCOME TO YOUR FRIENDLY MORTGAGE CALCULATOR (you're home may be at risk)"
  print "Loan Principal in pounds "
  p = get_num
  print "Annual interest rate percentage "
  i = get_num / 1200
  print "Number of monthly payments "
  n = get_num

  payment = p*((i*((1+i)**n)) / (((1+i)**n)-1))
  puts "Your monthly payment is #{payment.round(2)} pounds"
end

def bmi
  puts "WELCOME TO BMI CALCULATOR (REMEMBER MUSCLE WEIGHS MORE THAN FAT!)"
  print "Enter your weight "
  weight = get_num
  print "Was this number in (k)ilos or (p)ounds?"
  unit = gets.chomp.downcase

  if unit == "k"
    w = weight
  elsif unit == "p"
    w = weight / 2.2
  else
    puts "That's not a unit, please try again..."
    bmi
  end

print "Enter your height "
  height = get_num
  print "Was this number in (m)etres or (i)nches?"
  unit = gets.chomp.downcase

  if unit == "m"
    h = height
  elsif unit == "i"
    h = height / 39.37
  else
    puts "That's not a unit, please try again..."
    bmi
  end
  puts "Your BMI is #{(w / ( h**2)).round(2)}"
end

def trip_cost
  puts "WELCOME TO YOUR TRIP CALCULATOR (PLEASE DRIVE CAREFULLY!)"
  print "How far will you drive in miles? "
  distance = get_num
  print "What is the stated fuel economy of your car in MPG? "
  economy = get_num
  print "How fast will you drive in mph? "
  speed = get_num
  print "How much does the petrol cost in pounds per gallon? "
  price = get_num

if speed <= 60
  adj_economy = economy
else
  adj_economy = economy - 2 * (speed - 60)
end

puts "Your trip will take #{(distance/speed).round(2)} hours and will cost #{(price * (distance / adj_economy)).round(2)} pounds."

end

# run the app...

response = menu

while response != 'q'
  case response
  when 'b'
    basic_calc
  when 'a'
    advanced_calc
  when 'e'
    exotic_calc
  end
  puts "press any key to continue"
  gets
  response = menu
end