require 'nokogiri'
require 'open-uri'

class Mushroom 
    attr_accessor :name, :kingdom, :phylum, :klass, :order, :family, :genus
    @@all = []

#Hook and regular constructor
def initialize 
    @@all << self
end

#self.all is a calss method and class getter
def self.all
    @@all
end

#custom constructor
def self.new_from_wikipedia(mushroom_info)
    mushroom = Mushroom.new
    mushroom_info.each{|k, v|
mushroom.send("#{k.to_s}=",v)
}
mushroom
end
end