//
//  HomeVC.swift
//  S560301ToDoApp
//
//  Created by Manideep Gattineni on 4/4/24.
//

import UIKit

class HomeVC: UIViewController,UITextFieldDelegate {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        usernameTF.delegate=self
        passwordTF.delegate=self
        // Do any additional setup after loading the view.
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField == usernameTF{
            if let text = (usernameTF.text as NSString?)?.replacingCharacters(in: range, with: string){
                passwordTF.isEnabled = !text.isEmpty
            }
        }
        signInBtn.isEnabled = !(usernameTF.text ?? "").isEmpty && !(passwordTF.text ?? "").isEmpty
                
                return true
    }
    @IBOutlet weak var usernameTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    
    @IBOutlet weak var signInBtn: UIButton!
    
    @IBAction func signIn(_ sender: UIButton) {
        let username = usernameTF.text ?? ""
                let password = passwordTF.text ?? ""
                
                if username == "admin" && password == "P@$$w0rd" {
                    // Perform segue to ActionItemsTableVC
                    performSegue(withIdentifier: "hakunamatata", sender: nil)
                } else {
                    // Show an alert or handle invalid credentials
                    print("Invalid credentials")
                }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
