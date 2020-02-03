
describe Mushroom do
end
    context '.new_from_wikipedia' do
    end
    it 'it instantiates a mushroom based on wikipedia URL' do
    end
    giant_puffball = Mushroom.new_from_wikipedia(https://en.wikipedia.org/wiki/Calvatia_gigantea)
        expect(giant_puffball).to_be_an_instance_of (Mushroom)
        expect(giant_puffball.name).to_eq("Calvatia gigantea")
        expect(giant_puffball.kingdom).to_eq("Fungi")
        expect(giant_puffball.phylum).to_eq("Basidiomycota")
        expect(giant_puffball. klass).to_eq("Agaricomycetes")
        expect(giant_puffball.order).to_eq("Agaricales")
        expect(giant_puffball.family).to_eq("Agaricaceae")
        expect(giant_puffball.genus).to_eq("Calvatia")
    end
end


context 'properties' do
end
