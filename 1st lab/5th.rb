num = gets.chomp.to_i
sum = 0

while num != 0 do
    x = num % 10
    sum += x
    num /= 10
end

puts 'Summa ravna ' + sum