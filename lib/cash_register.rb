
class CashRegister

attr_accessor :discount, :total, :items, :last_transaction


def initialize(discount = 0)
@total = 0
@discount= discount
@items = []
end

def add_item(item, price , quantity = 1)
self.total += price * quantity
quantity.times do
    self.items << item
end
    self.last_transaction = price * quantity
end


def apply_discount
    if self.discount != 0
        self.total = (total-(total*(discount.to_f/100))).to_i
        "After the discount, the total comes to $#{self.total}."
    else
        "There is no discount to apply."
    end
end



def void_last_transaction
    self.total = self.total - self.last_transaction
end


end








# attr_accessor :total, :price, :discount, :items

# def initialize(employee_discount = 0)
# @total = 0
# @discount = employee_discount
# @items = []
# end



# def add_item(item,price,quantity = 1)
# self.total += price * quantity
# self.items = self.items << item * quantity
# end

# def apply_discount
#     if discount == 0
#         return "There is no discount to apply."
    
#     elsif 
    
#         return "After the discount, the total comes to #{@total}."
#     end
# end

# end