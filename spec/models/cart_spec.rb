require 'rails_helper'

RSpec.describe Cart, type: :model do
  describe "Basic functions of a shopping cart" do
    it "is able to put an item into a shopping cart" do
    end

    it "if the same item is added, CartItem won't increase, but the quantity will" do
    end

    it "an item is able to be added or cancelled in the shopping cart" do
    end

    it "every cart item can be calculated its own gross amount" do
    end

    it "is able to calculate the total amount of the shopping cart" do
    end

    it "is able to have special discount" do
    end
  end


  describe "Advanced functions of a shopping cart" do
    it "is able to convert the shopping cart's content into a hash, then be saved into session" do
    end

    it "is able to recovert the hash into the shopping cart's content" do
    end
  end
end
