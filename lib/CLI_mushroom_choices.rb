require_relative 'mushroom_scraper.rb'

class Intro_to_mushrooms

    def welcome
        puts "Welcome to intro to mushrooms!"
        mushroom_list
       
    end

    def mushroom_list
        puts "Choose one mushroom to find out about it."
        puts "Giant Puffball"
        puts "Ram's Head"
       #input = get_input_from_user
      mushroom_search(get_input_from_user)
    end

    def get_input_from_user
        gets.chomp
    end

    def mushroom_search(input)
        if input == "Giant Puffball"
            mushroom = MushroomScraper.scrape_from_wikipedia("https://en.wikipedia.org/wiki/Calvatia_gigantea")
            print_mushroom_information(mushroom)
        elsif input == "Ram's Head"
            mushroom = MushroomScraper.scrape_from_wikipedia("https://en.wikipedia.org/wiki/Grifola_frondosa")
            print_mushroom_information(mushroom)
     end
    end
     def print_mushroom_information(m)
        puts m.name
        puts m.kingdom
        puts m.phylum
        puts m.klass
        puts m.order
        puts m.family
        puts m.genus
     end
     
end

Intro_to_mushrooms.new.welcome