//
//  RegisterTableViewController.swift
//  Registration
//
//  Created by manish on 26/07/21.
//

import UIKit

class RegisterTableViewController: UITableViewController ,UITextFieldDelegate{
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtHome: UITextField!
    @IBOutlet weak var txtMobile: UITextField!
    @IBOutlet weak var txtAddess: UITextView!
    @IBOutlet weak var txtZipCode: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    func validation() -> Bool {
        if txtName.text?.isEmpty ?? true  || txtEmail.text?.isEmpty ?? true {
            debugPrint("these fiels cannot be empty")
            return false
        }
        if !(txtEmail.text?.isValidEmail() ?? false) {
            return false
        }
        return true
    }
        
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            if txtName.text?.count == 25 || txtEmail.text?.count == 25 {
                return false
            }
            if txtHome.text?.count == 10 || txtMobile.text?.count == 10{
                return false
            }
            if txtZipCode.text?.count == 6{
                return false
            }
            if txtAddess.text?.count == 100 {
                return false
            }
            return true
        }
  
    @IBAction func btnAddress(_ sender: UIButton) {
        if self.validation() ==  true {
        // if true then move to next scrren
        }
    }
    
}
extension String {
    func isValidEmail() -> Bool {
        // here, `try!` will always succeed because the pattern is valid
        let regex = try! NSRegularExpression(pattern: "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$", options: .caseInsensitive)
        return regex.firstMatch(in: self, options: [], range: NSRange(location: 0, length: count)) != nil
    }
}
