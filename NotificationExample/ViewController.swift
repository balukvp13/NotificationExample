//
//  ViewController.swift
//  NotificationExample
//
//  Created by Bala Krishna on 12/12/19.
//  Copyright © 2019 Bala Krishna. All rights reserved.
//


import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource {
    

    
    @IBOutlet weak var mTableView: UITableView!
    @IBOutlet weak var showLabelNoti: UILabel!
    
    let anmial:[String] = ["Rat" , "Cat" , "Lion" , "Cat" , "Lion" ,"Rat" , "Cat" , "Lion" , "Cat" , "Lion" ,"Rat" , "Cat" , "Lion" , "Cat" , "Lion"]
    
    let anmial1:[String] = ["Rat" , "Cat" , "Lion" , "Cat" , "Lion" ,"Rat" , "Cat" , "Lion" , "Cat" , "Lion" ,"Rat" , "Cat" , "Lion" , "Cat" , "Lion"]

    
    
    let animalimges:[String] = ["download.png" , "download.png" ,"download.png" ,"download.png" ,"download.png" ,"download.png" ,"download.png" ,"download.png" ,"download.png" ,"download.png" ,"download.png" ,"download.png" ,"download.png" ,"download.png" ,"download.png" ];
    
    
    let cellReuseIdentifier = "cell"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "HOME SCREEN"
        

        
  mTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier:cellReuseIdentifier)
        
        mTableView.delegate = self
        mTableView.dataSource = self
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject("Balu", forKey: "name")
        defaults.setBool(true, forKey: "Gender")
        defaults.setInteger(34, forKey: "Numbers")
        defaults.setFloat(11.23, forKey: "FloatValue")
        
        
      defaults.setURL(NSURL .fileURLWithPath("https:www.google.com"), forKey: "urlKey")
        
        let defaults1 = NSUserDefaults.standardUserDefaults()
        
        defaults1.valueForKey("name")
        defaults1.integerForKey("Numbers")
        
        
        
        let keyConstant = "namekey"
        
        let defaullts = NSUserDefaults.standardUserDefaults()
        defaullts.setObject("keyConstaname", forKey: keyConstant)
        
       if let name = defaullts.stringForKey(keyConstant){
            print(name)
        }
        
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
          }

    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return anmial.count
        
    }
    
    
    public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell:UITableViewCell = self.mTableView.dequeueReusableCellWithIdentifier(cellReuseIdentifier) as UITableViewCell!
        
        
        cell.textLabel?.text = anmial[indexPath.row]
        
        cell.detailTextLabel?.text = anmial1[indexPath.row]
        
        
        cell.imageView!.image = UIImage(named: "download.png")
        
        return cell
        
    }
    
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60;
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2;
    }
    

    
    
     public func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        
  self.performSegueWithIdentifier("showView", sender: indexPath);
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender:
        AnyObject?)
    {
    

        if (segue.identifier == "showView")
        {
            // upcoming is set to NewViewController (.swift)
            var upcoming: ViewController1 = segue.destinationViewController
                as! ViewController1
            // indexPath is set to the path that was tapped
            let indexPath = self.mTableView.indexPathForSelectedRow!
            // titleString is set to the title at the row in the objects array.
            let titleString = self.anmial[indexPath.row]
            // the titleStringViaSegue property of NewViewController is set.
            upcoming.passData = titleString
            self.mTableView.deselectRowAtIndexPath(indexPath, animated: true)
        }
    }
    
    
    @IBAction func nextBtnTapped(sender: AnyObject) {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

