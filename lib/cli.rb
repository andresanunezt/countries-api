class CLI

def run
    
    puts "Welcome to the Country Selector".colorize(:red)
    puts "The World is At Your Fingertips!".colorize(:red)
    sleep 2
    API.create_country
    list_countries
    menu
    
end

def list_countries
    Country.all.each.with_index(1) do | country, i |
        puts "#{i}. #{country.name}".colorize(:yellow)
    end
end

def menu
    puts "-----------------------------------------"
    puts "Please select a number between 1 and #{Country.all.size} to see more information:".colorize(:red)
    input = gets.chomp
    if !input.to_i.between?(1, Country.all.count)
        menu
    else
        country = Country.all[input.to_i-1].name
        Country.country_details(country)
       sleep 1.5
        select_other_country
    end
end

def select_other_country
puts "-----------------------------------------"
puts "Would you like to select another country? y/n ".colorize(:red)
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
puts "-----------------------------------------"
puts "Would you like to see a list of countries? y/n".colorize(:red)
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
    Country.ASCCI
    exit!
end


end
