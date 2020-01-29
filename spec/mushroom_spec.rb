
require_relative '../spec/spec_helper.rb'

describe Mushroom do

    let!(:mushroom) {Mushroom.new}

    context 'properties' do
         
       
       it "has a name" do 
            mushroom.name = "Name"
            expect(mushroom.name).to eq("Name")
        end

        it "has a kingdom" do
            mushroom.kingdom = "Kingdom"
            expect(mushroom.kingdom).to eq("Kingdom")
        end

        it "has a phylum" do
           
            mushroom.phylum = "Phylum"
            expect(mushroom.phylum).to eq("Phylum")
        end
        
        it "has a klass" do
            
            mushroom.klass = "Class"
            expect(mushroom.klass).to eq("Class")
        end

        it "has a order" do
            
             mushroom.order = "Order"
             expect(mushroom.order).to eq("Order")
        end

        it "has a family" do
            
             mushroom.family = "Family"
             expect(mushroom.family).to eq("Family")
        end

        it "has a genus" do
            
             mushroom.genus = "Genus"
             expect(mushroom.genus).to eq("Genus")

        end
    end
end