struct BankSystem{
    var accountType: String = ""
    var debitBalance = 0
    var creditBalance = 0
    let creditLimit = 100
    
    var debitBalanceInfo: String {
        "Debit balance: $\(debitBalance)"
    }
    
    var availableCredit: Int{
        creditLimit + creditBalance
    }
    
    var creditBalanceInfo: String{
        "Available credit: $\(availableCredit)"
    }
    
    func greet(){
        print("""

Welcome to the Simiel virtual bank system.

""")
    }
    
    func askAccount(){
        print("""
What kind of account would you like to open?
    1. Debit account
    2. Credit account
""")
    }
    
    mutating func setAccount(numberPadKey: Int){
        print("The selected option is \(numberPadKey)")
        
        switch numberPadKey {
        case 1:
            accountType = "Debit"
        case 2:
            accountType = "Credit"
        default:
            print("Invalid selection")
        }
        print("You have opened a \(accountType) account.")
    }
    
    func displayAccount(){
        print("You opened a \(accountType) account.")
    }
    
    mutating func debitDeposit(_ amount: Int){
        debitBalance += amount
        print("Deposited $\(amount)")
    }
    
    mutating func debitWithdraw(_ amount: Int) {
            if amount > debitBalance {
                print("Insufficient funds to withdraw $\(amount). \(debitBalanceInfo)")
            } else {
                debitBalance -= amount
                print("Debit withdraw: $\(amount). \(debitBalanceInfo)")
            }
        }
    
    mutating func creditDeposit(_ amount: Int) {
            creditBalance += amount
            print("Credit deposit: $\(amount). \(creditBalanceInfo)")
            if creditBalance == 0 {
                print("Paid off credit balance.")
            } else if creditBalance > 0 {
                print("Overpaid credit balance.")
            }
        }
    
    mutating func creditWithdraw(_ amount: Int) {
            if amount > availableCredit {
                print("Insufficient credit to withdraw $\(amount). \(creditBalanceInfo)")
            } else {
                creditBalance -= amount
                print("Credit withdraw: $\(amount). \(creditBalanceInfo)")
            }
        }
}

var testBank = BankSystem()
testBank.greet()

repeat{
    testBank.askAccount()
    let testSelection = Int.random(in: 1...5)
    testBank.setAccount(numberPadKey: testSelection)
} while testBank.accountType == ""


var bankAccount = BankSystem()
print(bankAccount.debitBalanceInfo)
bankAccount.debitDeposit(100)
bankAccount.debitWithdraw(20)
bankAccount.debitWithdraw(81)
print(bankAccount.creditBalanceInfo)
bankAccount.creditWithdraw(101)
bankAccount.creditWithdraw(100)
bankAccount.creditDeposit(50)
bankAccount.creditDeposit(50)
bankAccount.creditDeposit(100)
