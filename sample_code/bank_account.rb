class BankAccount
    def initialize(balance = 0)
        @balance = balance
    end

    def deposit(amount)
        @balance += amount if amount > 0
    end

    def withdraw(amount)
        @balance -= amount if amount > 0 && @balance >= amount
    end

    def balance
        @balance
    end
end

account = BankAccount.new(100)
account.deposit(50)
account.withdraw(20)

puts account.balance