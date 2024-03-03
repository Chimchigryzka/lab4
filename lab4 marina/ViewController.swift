import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    let exchangeRate: Double = 450
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func convertCurrency(_ sender: UIButton) {
        if let amountText = amountTextField.text, let amount = Double(amountText) {
            let result = amount * exchangeRate
            resultLabel.text = "\(amount) тенге = \(result) долларов"
        } else {
            resultLabel.text = "Введите сумму в тенге"
        }
    }
}
