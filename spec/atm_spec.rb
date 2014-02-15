require 'spec_helper'
require_relative '../lib/atm'

describe Atm do
  let(:atm) { Atm.new }

  it 'holds Australian note denominations' do
    expect(atm.aus_denoms).to include(100, 50, 20, 10, 5)
  end
end

describe Atm, '#withdraw' do

  let(:atm) { Atm.new }

  it 'cannot be completed for an amount less than five dollars' do
    withdrawal = atm.withdraw(3, [100, 50, 20, 10, 5])

    expect(withdrawal).to eq false
  end

  it 'cannot be completed for an amount not matching Australian denominations' do
    withdrawal = atm.withdraw(23, [100, 50, 20, 10, 5])

    expect(withdrawal).to eq false
  end

  it 'returns the highest possible denomination of notes' do
    two_hundred_seventy_five = atm.withdraw(275, [100, 50, 20, 10, 5])
    one_hundred_twenty = atm.withdraw(120, [100, 50, 20])
    sixty_five = atm.withdraw(65, [50, 20, 5])

    expect(two_hundred_seventy_five).to eq([100, 100, 50, 20, 5])
    expect(one_hundred_twenty).to eq([100, 20])
    expect(sixty_five).to eq([50, 5, 5, 5])
  end
end

describe Atm, '#can_dispense?' do

  let(:atm) { Atm.new }

  it 'will not dispense if zero is entered as the amount' do
    amount = 0
    denoms = [50, 10]

    expect(atm.can_dispense?(amount, denoms)).to be_false
  end

  it 'will not dispense if incorrect denominations for amount are specified' do
    amount = 65
    denoms = [50, 10]

    expect(atm.can_dispense?(amount, denoms)).to be_false
  end

  it 'will not dispense if non-australian denominations are specified' do
    amount = 100
    denoms = [100, 25]

    expect(atm.can_dispense?(amount, denoms)).to be_false
  end
end
