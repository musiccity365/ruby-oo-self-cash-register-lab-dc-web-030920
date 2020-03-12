class CashRegister
    attr_accessor :total, :discount, :quantity, :price, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @quantity = quantity
        @price = price
        @items = []
        @cart = []
    end

    def add_item(name, price, quantity = 1)
        @total += price * quantity
        @cart << price
        i = quantity
        until i == 0 do
            @items << name
            i -= 1
        end
        self.last_transaction = price * quantity
    end

    def apply_discount
        if @discount == 0
            "There is no discount to apply."
        else
            self.total -= (0.01 * @discount * @total).to_i
            "After the discount, the total comes to $#{self.total}." 
        end
    end

    def items
        @items
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end
end
