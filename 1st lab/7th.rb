num = gets.chomp.to_i


def sum(num)
    num = num.to_i
    sum = 0
    while num != 0 do
        x= num % 10
        sum += x
        num /= 10
    end
    return sum
end

def proizv(num)
    num = num.to_i
    pr = 1 
    while num != 0 do
        x= num % 10
        pr *= x
        x= num /= 10
    end
    return pr
end

def min(num)
    num = num.to_i
    min = num % 10
    num /= 10
    while num != 0 do
        x= num % 10
        if x< min then 
            min = x
        end
        num /= 10
    end
    return min
end

def max(num)
    num = num.to_i
    max = num % 10
    num /= 10
    while num != 0 do
        x= num % 10
        if x> max then 
            max = x
        end
        num /= 10
    end
    return max
end

def nod(a, b)
    if a % b == 0
      b
    else
      nod(b, a % b)
    end
end


def method1(num)
    acc = 0
    for i in 2..num-1
        if nod(num,i)!=1
            acc += 1
        end
    end
    return acc
end

def method2(num)
    num = num.to_i
    max = 0
    num /= 10
    while num != 0 do
        x= num % 10
        if x> max && x%3!=0 then 
             max = x
        end
        num /= 10
    end
    return max
end
    

puts 'Сумма чисел равна: ' + sum(num).to_s
puts 'Произведение чисел равно: ' + proizv(num).to_s
puts 'Максимальная цифра в числе: ' + max(num).to_s
puts 'Минимальная цифра в числе: ' + min(num).to_s
puts method1(num)
puts method2(num)