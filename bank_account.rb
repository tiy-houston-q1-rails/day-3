class BankAccount
  attr_accessor :balance

  def initialize(moneys)
    @balance = moneys
  end

  def withdraw(dollas)
    @balance -= dollas
  end

  def deposit(dollas)
    @balance += dollas
  end

end

class SavingsAccount < BankAccount
end


account = BankAccount.new(740_000_000)
account.deposit 500
account.withdraw 10
puts account.balance

kids = SavingsAccount.new(0.05)
kids.deposit 0.01
puts kids.balance
