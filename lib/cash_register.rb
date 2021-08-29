class CashRegister
    
    attr_accessor :total, :discount, :items, :item_price

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @item_price = []
    end

    def add_item(title, price, quantity = 1)
        quantity.times do @items << title
        end
        quantity.times do @item_price << price * quantity
        end
        self.total += price * quantity
    end

    def apply_discount
        if self.discount == 0
            return "There is no discount to apply."

        else self.discount != 0
            self.total -= (self.total * self.discount/100)
            return "After the discount, the total comes to $#{self.total}."
        end
    end

    def void_last_transaction
        self.total -= @item_price[-1]
        if self.items == []
            self.total = 0
        end
    end

end
