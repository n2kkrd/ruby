
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

def vibor(method,num)
    case method
    when 'summa'
        return "Сумма ваших цифр числа = " + sum(num).to_s
    when 'composition'
        return "Произведение ваших цифр числа =  " + proizv(num).to_s
    when 'minimum'
        return "Минимальная цифра вашего числа = " + min(num).to_s
    when 'maximum'
        return "Максимальная цифра вашего числа = " + max(num).to_s
    when 'method1'
        return "Количество чисел взаимно простых с вашим = " + method1(num).to_s
    when 'method2'
        return "Сумма цифр вашего числа, делящиеся на 3 = " + method2(num).to_s
    when 'method3'
        return "Делитель вашего числа, взаимно простой с количеством цифр = " + method3(num).to_s
    when "help"
        help()
    else
        puts "Такой функции нет"
    end
end

def help()
    puts" Список доступных методов.
    1. summa - сумма цифр числа.
    2. composition - произведение цифр числа.
    3. minimum - минимальная цифра числа.
    4. maximum - максимальная цифра числа.
    5. method1 - количество чисел не взаимно простых с введенным.
    6. method2 - Максимальная цифра числа, не делящуюся на 3
    7. method3 - Произведение макс, не взаимно простого с данным, не дел на наименьший делитель, и суммы цифр числа, меньше 5
    "
end
print 'Введите число: '
num = gets.chomp.to_i
puts help()
print 'Введите метод: '
method = gets.chomp


puts vibor(method,num)
