#Устанавливает правильную кодировку, без неё не работало сравнение слов на кириллице 
if (Gem.win_platform?)
    Encoding.default_external = Encoding.find(Encoding.locale_charmap)
    Encoding.default_internal = __ENCODING__
  
    [STDIN, STDOUT].each do |io|
      io.set_encoding(Encoding.default_external, Encoding.default_internal)
    end
  end
puts "Привет, как тебя зовут?"
name = gets.chomp.encode("UTF-8")
puts "Какой твой любый язык программирования?"
name_language = gets.chomp.encode("UTF-8")

case name_language
    when "Ruby","ruby","Руби","руби"
        puts("Ты подлиза")
    when "python","Python","Питон","питон","пайтон","Пайтон"
        puts("Неплохой выбор. Кстати факт: В Ruby есть языковая конструкция switch. А в python — нету. #{name}, переходи на Ruby) ")
    when "c++","си++","cpp","С++"  
        puts("Неплохой выбор. Кстати факт: В Ruby все методы виртуальные. А в C++ — нет. #{name}, переходи на Ruby) ")
    when "С#","c#","Си шарп","си шарп","Си Шарп"
        puts("Неплохой выбор. Кстати факт: типы данных в Ruby не проверяются, а в C# занимают много места. #{name}, переходи на Ruby)")
    when "JavaScript","Java Script","javascript","java script","джава скрипт","Джава Скрипт"
        puts("Неплохой выбор. Кстати факт: В Ruby есть только один тип функций. А в Ruby несколько: блоки, процессы, лямбда. #{name}, переходи на Ruby)")
    when "Java","java","Джава","джава","Ява"
        puts("Неплохой выбор. Кстати факт: В Ruby нет проверки статического типа. А в Java — есть. #{name}, переходи на Ruby)")
    when "C","c","С","с","Си","си"
        puts("Неплохой выбор. Кстати факт: В Ruby размер массива увеличивается автоматически при добавлении элемента. А в C — нет. #{name}, переходи на Ruby) ")
    when "R","r","Р","р","Эр","эр","R Studio"
        puts("Норм, Ай лов биг дата ту")
    when "Prolog","prolog","Пролог","пролог"
        puts("Соболезную")
    else 
        puts("Какой-то ноунейм язык, #{name}. Лучше попробуй Ruby")
end
