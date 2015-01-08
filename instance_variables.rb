class BankAccount
  # attr_accessor :balance

  def balance=(other)
    @balance = other #instance variable
  end

  def balance
    @balance
  end


  # def balance
  #   "$#{@balance.round(2)}"
  # end

end

account = BankAccount.new
account.balance = 50
puts account.balance
