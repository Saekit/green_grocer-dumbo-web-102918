def consolidate_cart(cart)
  new_cart_hash = {}
  cart.each do |item|
    item.each do |product, value| # value.merge!(new key-val)
      new_cart_hash[product] = {value}
    end
  end
  new_cart_hash
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
