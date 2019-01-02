class BankAccount
  attr_accessor :balance, :status
  attr_writer :name

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
end
