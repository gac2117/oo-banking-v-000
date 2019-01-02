class Transfer
  attr_accessor :sender, :receiver, :status, :amount # your code here

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    if valid?
      sender.balance = sender.balance - amount
      receiver.balance = receiver.balance + amount
      status = "complete"
    else
      "Transaction rejected. Please check your account balance."
    end
  end
end
