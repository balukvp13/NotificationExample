//
//  ViewController4.swift
//  NotificationExample
//
//  Created by Bala Krishna on 07/01/20.
//  Copyright © 2020 Bala Krishna. All rights reserved.
//

import UIKit

class ViewController4: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var txtField1: UITextField!
    
    @IBOutlet weak var txtField2: UITextField!
    
    @IBOutlet weak var mButton: UIButton!
    
    @IBAction func mButtonTapped(sender: AnyObject) {
        
        print("How are you technoforte")
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        txtField1.placeholder = "Enter text here"
        txtField1.font = UIFont (name: "Verdana", size: 18)
        
        txtField1.borderStyle = UITextBorderStyle.RoundedRect
        
        txtField1.autocorrectionType = UITextAutocorrectionType.No
        
        txtField1.keyboardType = UIKeyboardType.Default
        
        txtField1.returnKeyType = UIReturnKeyType.Done
        
        
        txtField1.clearButtonMode = UITextFieldViewMode.WhileEditing
        txtField1.contentVerticalAlignment = UIControlContentVerticalAlignment.Center
        
        
        txtField1.delegate = self;
        txtField2.delegate = self;
        
        var val:String = "Value"
        func changedString(inout newValue: String){
            newValue = "SAMSUNG"
            print(val)
        }
        changedString(&val)
        
        
        let defaultvalule:String? = nil
        let empName:String? = "ramlaxman"
        let existingEmpNmae:String = defaultvalule ?? empName!
        
        print(existingEmpNmae)
        
        
        
        
    }
    
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        // return NO to disallow editing.
//        print("TextField should begin editing method called")
//        return true
        
        if textField == txtField1 {
            return true; //do not show keyboard nor cursor
        } else if textField == txtField2 {
            return true
        }
        return true
    }
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        // became first responder
        print("TextField did begin editing method called")
    }
    
    
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        // return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end
        print("TextField should end editing method called")
        return true
    }
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        // may be called if forced even if shouldEndEditing returns NO (e.g. view removed from window) or endEditing:YES called
        print("TextField did end editing method called")
    }
    
    
        func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // return NO to not change text
        print("While entering the characters this method gets called")
        return true
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        // called when clear button pressed. return NO to ignore (no notifications)
        print("TextField should clear method called")
        return true
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // called when 'return' key pressed. return NO to ignore.
        print("TextField should return method called")
        // may be useful: textField.resignFirstResponder()
        txtField1 .resignFirstResponder()
        txtField2 .resignFirstResponder()
        return true
    }
    
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
