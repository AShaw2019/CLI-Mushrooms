
class MushroomScraper
    
    def self.scrape_mushrooms
        sci_names = ["Calvatia_gigantea", "Grifola_frondosa", "Matsutake", "Blusher", "Volvariella_volvacea", "Agaricus_arvensis", "Pecan_truffle", "Shaggy_parasol"]
        sci_names.each do |name|
        MushroomScraper.scrape_from_wikipedia("https://en.wikipedia.org/wiki/#{name}")
      end
    end

    def self.scrape_from_wikipedia(url)
        doc = Nokogiri::HTML(open(url))
        mushroom_info = {
                :name => doc.css("th").first.text.strip,
                :kingdom => doc.css("div.kingdom a").text,
                :phylum => doc.css("div.phylum a").text,
                :klass => doc.css("div.class a").text,
                :order => doc.css("div.order a").text,
                :family => doc.css("div.family a").text,
                :genus => doc.css("div.genus a").text
        }
        mushroom = Mushroom.new_from_wikipedia(mushroom_info)       
    end    
end

