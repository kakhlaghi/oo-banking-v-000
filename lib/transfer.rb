require 'pry'
class Transfer
  # your code here
  attr_accessor :sender, :receiver, :amount, :status
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    receiver_validity = receiver.valid?
    sender_validity = sender.valid?
    if receiver_validity && sender_validity
      true 
    else
      false 
    end
  end
  
  def execute_transaction
    
    if @status == "pending" 
        sender.balance -= @amount
        receiver.balance += @amount
    end
     if sender.valid?
        @status = "complete"
<<<<<<< HEAD
     else
        @status = "rejected"
        return "Transaction rejected. Please check your account balance."
     end
  end
  
  def reverse_transfer
    if @status == "complete"
      sender.balance += @amount
      receiver.balance -= @amount
      @status = "reversed"
    end
  end
  
  
  
=======
      else
        return "Transaction rejected. Please check your account balance."
        @status = "rejected"
      end
    
  end
  
  
>>>>>>> c1dd84acb4138cfedf1ad49bfc11900813bb6b6c
end