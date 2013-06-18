# Function definitions first
def menu
  # Clear the screen, and present the user with a menu
  puts `clear`
  puts "***CalcIt***"
  print "(b)asic, (a)dvanced, or (q)uit: "
  gets.chomp.downcase
end

def  power
  num_1
  puts "... and raise it to the power:"
  num_2
  result = numinput1**numinput2
  puts "#{numinput1} to the power of #{numinput2} equals #{result}"
end

def sqrt
  num_1
  result = numinput1**(1/2)
  puts "The square-root of #{numinput1} is #{result}"
end



def basic_calc
  # ask the user which operation they want to perform
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  operation = gets.chomp.downcase
end

def advanced_calc
print"(p)ower, (s)quare-root:"
operation = gets.chomp.downcase
case operation
when 'p'
  power
when 's'
  sqrt
else
  puts "That is not a valid option"
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