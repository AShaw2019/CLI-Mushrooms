
class Mushroom 
    attr_accessor :name, :kingdom, :phylum, :klass, :order, :family, :genus
    @@all = []


def initialize 
    @@all << self
end


def self.all
    @@all   
end


def self.new_from_wikipedia(mushroom_info)
    mushroom = Mushroom.new
    mushroom_info.each do |k, v|
    mushroom.send("#{k.to_s}=",v)
    mushroom
    end
  end
end