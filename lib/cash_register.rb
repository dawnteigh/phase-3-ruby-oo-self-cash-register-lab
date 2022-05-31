class CashRegister
    attr_accessor :total, :discount, :items, :last

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @last = 0
    end

    def add_item(item, price, quantity = 1)
        quantity.times do 
            self.items << item
        end
        self.total += price * quantity
        self.last = price * quantity
    end

    def apply_discount
        if self.discount > 0
            self.total = self.total - self.total * self.discount / 100
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.last
    end
end
