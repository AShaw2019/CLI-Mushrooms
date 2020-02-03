
class Intro_to_mushrooms

    def welcome
        puts ""
        puts "Welcome to intro to mushrooms!"
        puts "" 
        MushroomScraper.scrape_mushrooms
        mushroom_list                
     end

    def mushroom_list
        puts "Please type in the number that correlates with the mushroom you are wanting information about."
        puts "If you would like to exit the program, please type 'exit'."
        puts ""
        Mushroom.all.each.with_index(1) do |mushroom, index|
          puts "#{index}. #{mushroom.name}"         
        end
        puts ""
        mushroom_search(get_input_from_user)
    end

    def get_input_from_user
        gets.chomp
    end

    def mushroom_search(input)    
       if input.to_i.between?(1, Mushroom.all.length)
        a = Mushroom.all[input.to_i - 1]
        print_mushroom_information(a)
        mushroom_list
       elsif input == "exit"
        puts "Have a nice day!"
        exit
       else 
        puts ""
        puts "Wrong information! Please try again."
        puts ""
        mushroom_list
       end
     end
   
     
    def print_mushroom_information(m)
        puts ""
        puts "Name = #{m.name}"       
        puts "Kingdom = #{m.kingdom}"
        puts "Pyhlum = #{m.phylum}"
        puts "Class = #{m.klass}"
        puts "Order = #{m.order}"
        puts "Family = #{m.family}"
        puts "Genus = #{m.genus}"
        puts ""
     end
     
end

