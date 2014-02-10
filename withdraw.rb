Dir['./lib/*.rb'].each { |file| require file }

puts 'Welcome. How much money would you like to withdraw today?'
amount = gets.to_i

puts 'What denonimations would you prefer?'
puts 'NB: Please separate by commas and only use Australian denominations'
denoms = gets
denoms = denoms.split.map { |d| d.to_i }

withdrawal = Atm.new.withdraw(amount, denoms)

if withdrawal
  puts "Your withdrawal has been processed. Please collect the following notes: #{withdrawal}"
else
  puts "Sorry your withdrawal could not be processed."
  puts "Please enter an amount greater than zero"
  puts "and make sure you have suitable denominations."
end
