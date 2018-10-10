def consolidate_cart(cart)
  new_cart_hash = {}
  cart.each do |item|
    item.each do |product, value| # value.merge(new key-val)
      if new_cart_hash[product].nil? # if new cart is empty
        new_cart_hash[product] = value.merge({:count => 1}) #start filling
      else
        new_cart_hash[product][:count] += 1 #else add on same products
      end
    end
  end
  new_cart_hash
end

def apply_coupons(cart, coupons)
  new_cart = cart
  coupons.each do |coupon|
    product = coupon[:item]
    if !new_cart[product].nil? && new_cart[product][:count] >= coupon[:num]
      temp = {"#{product} W/COUPON" => {
        :price => coupon[:cost],
        :clearance => new_cart[product][:clearance],
        :count => 1
        }
      }
      if new_cart["#{product} W/COUPON"].nil?
        new_cart.merge!(temp)
      else
        new_cart["#{product} W/COUPON"][:count] += 1
      end
      new_cart[product][:count] -= coupon[:num]
    end
  end
  new_cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
