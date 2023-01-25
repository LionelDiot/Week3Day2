require_relative '../lib/caesar_cypher.rb'

#describe "the split_into_array method" do
  #it "should return an array of every char in the string" do
   # expect(split_into_array("Le Dormant ?")).to eq(["L","e"," ","D","o","r","m","a","n","t"," ","?"])
  #end 
  #realisé apres que c'etait un peu useless avec .chars

describe "the cyphering method" do
  it "should return a string cyphered by the amount of the key(positive int)" do
    expect(cyphering("abc",3)).to eq("def")
    expect(cyphering("yza",2)).to eq("abc")
  end
  it "should return a message if the key is not between 0 and 26" do
    expect(cyphering("abc",30)).to eq("give me a number between 0 et 26 next time")
  end
  it "should be caps sensitive and respect ponctuations" do
    expect(cyphering("YzA ?",2)).to eq("AbC ?")
  end
end