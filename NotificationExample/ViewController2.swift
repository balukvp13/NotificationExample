//
//  ViewController2.swift
//  NotificationExample
//
//  Created by Bala Krishna on 18/12/19.
//  Copyright © 2019 Bala Krishna. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    var itempass = ""
    var imagepass = ""

    
    @IBOutlet weak var imgLabel: UIImageView!

    @IBOutlet weak var itemLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.itemLbl.text = itempass
        
        self.imgLabel.image = UIImage (named: imagepass)
        
        
        func abs(_ a: Int) -> Int
        {
            if a < 0 {
                return a * -1
            }
            
            return a
        }
        
        let result = abs(-11)
        print(result)
        
        
        
        func abcd(A:Int)-> Int{
            if A < 0 {
                return A * -1
            }
            return A
            
        }
        
        let ascf = abcd(-111)
        print(ascf)
        
        
        
        
        
        

        // Do any additional setup after loading the view.
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
