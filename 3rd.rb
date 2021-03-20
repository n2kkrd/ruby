puts "Какой твой любый язык программирования?"
name_language = gets.chomp

case name_language
when "Ruby" then puts("Ты подлиза")
when "ruby" then puts("Ты подлиза")
when "Руби" then puts("Ты подлиза")
when "руби" then puts("Ты подлиза")
else puts("Скоро будет Ruby")
end