class Transfer
  attr_accessor :sender, :receiver, :status, :amount # your code here

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    @sender.bankaccount.valid?
  end
end
