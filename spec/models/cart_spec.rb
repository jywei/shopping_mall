require 'rails_helper'

RSpec.describe Cart, type: :model do
  describe "Basic functions of a shopping cart" do
    it "is able to put an item into a shopping cart" do
      cart = Cart.new
      cart.add_item             1
      expect(cart.empty?).to be false
    end

    it "if the same item is added, CartItem won't increase, but the quantity will" do
      cart = Cart.new
      3.times { cart.add_item(1) }
      5.times { cart.add_item(2) }
      2.times { cart.add_item(3) }

      expect(cart.items.length).to be          3
      expect(cart.items.first.quantity).to be  3
      expect(cart.items.second.quantity).to be 5
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
