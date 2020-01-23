import UIKit

protocol TransferData
{
    func transferContacts(contacts:[String])
}

class SecondViewController: UIViewController
{
    
@IBOutlet var textField: [UITextField]!
    
    
    var dataRef:TransferData!
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    
    
    
@IBAction func submit(_ sender: UIButton)
    
{
        var contactDetails = [String]()
        
        for x in textField
        {
            contactDetails.append(x.text!)
            print(contactDetails,"contacts detail")
        }
        
        dataRef.transferContacts(contacts: contactDetails)
        
        
        dismiss(animated: true, completion: nil)
    
    }
    
}
