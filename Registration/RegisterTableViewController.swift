//
//  RegisterTableViewController.swift
//  Registration
//
//  Created by manish on 26/07/21.
//

import UIKit

class RegisterTableViewController: UITableViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtHome: UITextField!
    @IBOutlet weak var txtMobile: UITextField!
    @IBOutlet weak var txtAddess: UITextView!
    @IBOutlet weak var txtZipCode: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func btnAddress(_ sender: UIButton) {
    }
    
}
