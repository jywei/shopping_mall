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
      cart = Cart.new
      p1 = Product.create(title: "title1")
      p2 = Product.create(title: "title2")

      4.times { cart.add_item(p1.id) }
      2.times { cart.add_item(p2.id) }

      expect(cart.items.first.product_id).to be  p1.id
      expect(cart.items.second.product_id).to be p2.id
      expect(cart.items.first.product).to be_a   Product
    end

    it "is able to calculate the total amount of the shopping cart" do
      cart = Cart.new
      p1 = Product.create(title: "title1", price: 80)
      p2 = Product.create(title: "title2", price: 200)

      3.times {
        cart.add_item(p1.id)
        cart.add_item(p2.id)
      }

      expect(cart.total_price).to be 840
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
