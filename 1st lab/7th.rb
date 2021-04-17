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

def men(n)
    i=1
    while i <= n
        i = i + 1
        if n % i == 0
            return i
            break
        end
    end
end

def aboba(num)
    maxim = 0
    for i in 2..num-1
        if nod(num,i)!=1 && nod(num,i)%men(num)!=0
            maxim=i
        end
    end
    return maxim
end

def men5(n)
    sum = 0
    while n != 0 do
        x= n % 10
        if x<5
            sum += x
        end
        n /= 10
    end
    return sum
end
def method3(num)
    return aboba(num)*men5(num)
end

puts 'Сумма цифр равна: ' + sum(num).to_s
puts 'Произведение цифр равно: ' + proizv(num).to_s
puts 'Максимальная цифра в числе: ' + max(num).to_s
puts 'Минимальная цифра в числе: ' + min(num).to_s
puts method1(num)
puts method2(num)
puts method3(num)