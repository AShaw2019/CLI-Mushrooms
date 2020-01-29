require_relative 'mushroom_scraper.rb'
require 'pry'
class Intro_to_mushrooms

    def welcome
        puts "Welcome to intro to mushrooms!"        
        MushroomScraper.scrape_from_wikipedia("https://en.wikipedia.org/wiki/Calvatia_gigantea")
        MushroomScraper.scrape_from_wikipedia("https://en.wikipedia.org/wiki/Grifola_frondosa")
       
        mushroom_list
     end

    def mushroom_list
        puts "Please type in a name of a mushroom, if you are not sure, here are a couple suggestions for you."
        puts "Type Giant Puffball"
        puts "Type Maitake"
      mushroom_search(get_input_from_user)
    end

    def get_input_from_user
        gets.chomp
    end

    def mushroom_search(input)
        input = input.downcase
       if input == "exit"
         exit
       end
       
      found_mushroom = Mushroom.all.find do |m|
        m.name.downcase == input
      end

        if found_mushroom == nil   
            puts "Wrong information, please try again."                    
        else

            print_mushroom_information(found_mushroom)
        end
         mushroom_list
     end
   
     
    def print_mushroom_information(m)
        puts ""
        puts m.name       
        puts m.kingdom
        puts m.phylum
        puts m.klass
        puts m.order
        puts m.family
        puts m.genus
        puts ""
     end
     
end

