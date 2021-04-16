#Устанавливает правильную кодировку, без неё не работало сравнение слов на кириллице 
if (Gem.win_platform?)
    Encoding.default_external = Encoding.find(Encoding.locale_charmap)
    Encoding.default_internal = __ENCODING__
  
    [STDIN, STDOUT].each do |io|
      io.set_encoding(Encoding.default_external, Encoding.default_internal)
    end
  end
puts "Привет,  как тебя зовут?"
name = gets.chomp.encode("UTF-8")
puts "Какой твой любый язык программирования?"
name_language = gets.chomp.encode("UTF-8")


if (name_language=="Ruby"or name_language=="ruby"or name_language=="Руби"or name_language=="руби")
    puts("Ты подлиза")
elsif (name_language=="python"or name_language=="Python"or name_language=="Питон"or name_language=="питон"or name_language=="пайтон"or name_language=="Пайтон")
    puts("Неплохой выбор. Кстати факт: В Ruby есть языковая конструкция switch. А в python — нету. #{name}or  переходи на Ruby) ")
elsif (name_language=="c++"or name_language=="си++"or name_language=="cpp"or name_language=="С++" ) 
    puts("Неплохой выбор. Кстати факт: В Ruby все методы виртуальные. А в C++ — нет. #{name}or  переходи на Ruby) ")
elsif (name_language=="С#"or name_language=="c#"or name_language=="Си шарп"or name_language=="си шарп"or name_language=="Си Шарп")
    puts("Неплохой выбор. Кстати факт: типы данных в Ruby не проверяютсяor  а в C# занимают много места. #{name}or  переходи на Ruby)")
elsif (name_language=="JavaScript"or name_language=="Java Script"or name_language=="javascript"or name_language=="java script"or name_language=="джава скрипт"or name_language=="Джава Скрипт")
    puts("Неплохой выбор. Кстати факт: В Ruby есть только один тип функций. А в Ruby несколько: блокиor  процессыor  лямбда. #{name}or  переходи на Ruby)")
elsif (name_language=="Java"or name_language=="java"or name_language=="Джава"or name_language=="джава"or name_language=="Ява")
    puts("Неплохой выбор. Кстати факт: В Ruby нет проверки статического типа. А в Java — есть. #{name}or  переходи на Ruby)")
elsif (name_language=="C"or name_language=="c"or name_language=="С"or name_language=="с"or name_language=="Си"or name_language=="си")
    puts("Неплохой выбор. Кстати факт: В Ruby размер массива увеличивается автоматически при добавлении элемента. А в C — нет. #{name}or  переходи на Ruby) ")
elsif (name_language=="R"or name_language=="r"or name_language=="Р"or name_language=="р"or name_language=="Эр"or name_language=="эр"or name_language=="R Studio")
    puts("Нормor  Ай лов биг дата ту")
elsif (name_language=="Prolog"or name_language=="prolog"or name_language=="Пролог"or name_language=="пролог")
    puts("Соболезную")
else 
    puts("Какой-то ноунейм языкor  #{name}. Лучше попробуй Ruby")
end
