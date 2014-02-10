# Ruby Challenge

## ATM withdrawal

Write function to handle withdrawing money from an ATM. It will accept an amount
and an array (denom) specifying the denominations of (Australian) note available
for that withdrawal, and return an array representing the notes to return. If
withdraw cannot be completed for the given amount with the specified
denomination of notes, return false.

Eg. withdraw(220, [50, 20, 5]) says to withdraw $220, with only $50, $20 and $5
notes available.* Assume people prefer to get the highest possible denomination
of note - eg, withdraw(65, [50, 20, 5]) should return [50, 5, 5, 5] rather than
[20, 20, 20, 5], because $50 is highest.*
