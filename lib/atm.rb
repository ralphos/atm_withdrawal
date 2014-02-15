class Atm
  attr_reader :aus_denoms
  def initialize
    @aus_denoms = [100, 50, 20, 10, 5]
  end

  def withdraw(amount, denoms)
    result = []
    if can_dispense?(amount, denoms)
      denoms.each do |denom|
        note_count = (amount / denom).floor
        note_count.times { result << denom }
        amount = amount % denom
      end
      result
    else
      false
    end
  end

  def can_dispense?(amount, denoms)
    valid?(amount) && correct_denoms_specified?(amount, denoms)
  end

  private

  def valid?(amount)
    amount != 0
  end

  def correct_denoms_specified?(amount, denoms)
    valid_denoms_entered?(amount, denoms) && aus_denom_specified?(denoms)
  end

  def valid_denoms_entered?(amount, denoms)
    amount % denoms.min == 0
  end

  def aus_denom_specified?(denoms)
    (denoms & aus_denoms) == denoms
  end
end
