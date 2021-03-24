class CLI

def run
    puts " "
    puts "Welcome to the Country Selector".colorize(:red)
    puts "The World is At Your Fingertips!".colorize(:red)
    Country.ASCCI
    API.create_country
    start 
end

def list_countries
    Country.all.each.with_index(1) do | country, i |
        puts "#{i}. #{country.name}".colorize(:yellow)
    end
    puts "-----------------------------------------"
end

def menu
    sleep 1
    puts "Please select a number between 1 and #{Country.all.size} to see more information:".colorize(:red)
    input = gets.chomp
    if !input.to_i.between?(1, Country.all.size)
        menu
    else
        country = Country.all[input.to_i-1].name
       sleep 1
        Country.country_details(country)
       sleep 1
        select_other_country
    end
end

def start
puts "Press 'y' to begin or 'n' to exit the program".colorize(:red)
input = gets.chomp
if input.downcase == "y"
    sleep 1
    list_countries
    menu
elsif input.downcase == "n"
    exit_program
else
    start
end
end


def select_other_country
puts "Would you like to select another country? y/n ".colorize(:light_cyan)
input = gets.chomp

if input.downcase == "y"
    want_list
elsif input.downcase == "n"
    exit_program
else
    select_other_country
end
end

def want_list
puts " "
puts "Would you like to see a list of countries? y/n".colorize(:yellow)
input = gets.chomp
if input.downcase == "y"
    list_countries
    menu
elsif input.downcase == "n"
    menu
else
    want_list
end
end

def exit_program
    puts "Goodbye! Come back soon!".colorize(:light_magenta)
    exit!
    Country.ASCCI
end


end
