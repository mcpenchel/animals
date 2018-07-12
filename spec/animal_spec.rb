require_relative '../animal'
require_relative '../lion'
require_relative '../meerkat'
require_relative '../warthog'

describe Animal do
  describe "#initialize" do
    it "returns an object of the animal class" do
      expect(Animal.new("Pumba")).to be_an(Animal)
    end
  end
  describe ".phyla" do
    it "return an array of the four phyla of the animal kingdom" do
      expect(Animal.phyla).to eq(["Ecdysozoa", "Lophotrochozoa", "Radiata","Deuterostomia"])
    end
  end
  describe "#eat" do
    it "return Timon eats a scorpion" do
      expect(Animal.new("Timon").eat("scorpion")).to eq("Timon eats a scorpion")
    end
  end
end
describe Lion do
  describe "#eat" do
    it "return Simba eats a gazelle. Law of the jungle!" do
      expect(Lion.new("Simba").eat("gazelle")).to eq("Simba eats a gazelle. Law of the jungle!")
    end
  end

  describe "#talk" do
    it "returns Simba roars for animal name Simba" do
      expect(Lion.new("Simba").talk).to eq("Simba roars")
    end
  end

end

describe Meerkat do
  describe "#talk" do
    it "returns Timon barks" do
      expect(Meerkat.new("Timon").talk).to eq("Timon barks")
    end
  end
end
describe Warthog do
  describe "#talk" do
    it "returns Pumbaa grunts" do
      expect(Warthog.new("Pumbaa").talk).to eq("Pumbaa grunts")
    end
  end
end
