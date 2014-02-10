## ATM withdrawal Challenge

Write function to handle withdrawing money from an ATM. It will accept an amount
and an array (denom) specifying the denominations of (Australian) note available
for that withdrawal, and return an array representing the notes to return. If
withdraw cannot be completed for the given amount with the specified
denomination of notes, return false.

Eg. withdraw(220, [50, 20, 5]) says to withdraw $220, with only $50, $20 and $5
notes available. *Assume people prefer to get the highest possible denomination
of note - eg, withdraw(65, [50, 20, 5]) should return [50, 5, 5, 5] rather than
[20, 20, 20, 5], because $50 is highest.*

### Testing it out

Clone the repository

    $ git clone git@github.com:ralphos/atm_withdrawal.git

Change directory to project root

    $ cd atm_withdrawal

Run bundle install (I used Rspec for this example)

    $ bundle install

Run tests to check everything's working as it should be

    $ bundle exec rspec -fd

Try it out!

    $ ruby withdraw.rb

### Version 1

FYI: This was my first attempt at this challenge and I expect quite a lot of
refactoring.

### Thanks!

Let me know if you have any questions or want to discuss, by shooting me an email
wintle.ralph[at]gmail[dot]com or check out my blog at
(http://www.ralphonrails.com)[http://www.ralphonrails.com]
