require 'rails_helper'

RSpec.describe CartItem, type: :model do
  it "every cart item can be calculated its own gross amount" do
    p1 = Product.create(title: "title1", price: 80)
    p2 = Product.create(title: "title2", price: 200)

    cart = Cart.new
    3.times { cart.add_item(p1.id) }
    4.times { cart.add_item(p2.id) }
    2.times { cart.add_item(p1.id) }

    expect(cart.items.first.price).to be  400
    expect(cart.items.second.price).to be 800
  end
end
