class BankAccount

  def initialize
    @amount = 5000
  end

  def status
    "Your account has #{amount} dollars"
  end

  private

    def amount
      @amount / 100
    end

end

account = BankAccount.new
p account.status
