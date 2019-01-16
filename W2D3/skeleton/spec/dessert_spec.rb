require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "kenny") }
  subject(:cake) { Dessert.new("cake", 50, chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(cake.type).to eq("cake")
    end

    it "sets a quantity" do
      expect(cake.quantity).to eq(50)
    end

    it "starts ingredients as an empty array" do
      expect(cake.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect{Dessert.new("ice cream", "100", chef)}.to raise_error(ArgumentError)
    end

  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      cake.add_ingredient("flour")      
      expect(cake.ingredients[0]).to eq("flour")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = ["egg", "sugar", "cream"]
      ingredients.each do |ing|
        cake.add_ingredient(ing)
      end
      expect(cake.ingredients).to eq(ingredients)

      cake.mix!
      expect(cake).not_to eq(cake.ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      cake.eat(1)
      expect(cake.quantity).to eq(49)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { cake.eat(51) }.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Kenny")
      expect(cake.serve).to eq("Chef Kenny has made 50 cakes!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(cake)
      cake.make_more
    end
  end
end
