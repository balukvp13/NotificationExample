//
//  ViewController1.swift
//  NotificationExample
//
//  Created by Bala Krishna on 12/12/19.
//  Copyright © 2019 Bala Krishna. All rights reserved.
//

import UIKit


class ViewController1: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {
    
    var passData = ""
    
    
    var selectedImage = String()
    var selectedLabels = String()

    var Places:[String] = ["Bangalore" , "Hyderabad" , "Chennai" , "Bangalore" , "Hyderabad" , "Chennai"]
    
    var placeimages:[String] = ["download.png" , "download.png" ,"download.png" , "download.png" , "download.png" ,"download.png"]
    
    
    
    @IBOutlet weak var myWebview: UIWebView!
    
    
//let reuseIdentifier = "CellIdentifer";
    
    
    
    @IBOutlet weak var mCollectionView: UICollectionView!
    

    @IBOutlet weak var nameLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // mCollectionView.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        myWebview.loadRequest(NSURLRequest(URL: NSURL(string: "https://www.cricbuzz.com/")!))
        
        
        self.title = "PRODUCT"
        
        mCollectionView.delegate = self
        mCollectionView.dataSource = self
        
        
        self.nameLbl.text = passData

        // Do any additional setup after loading the view.
    }
    
    
   
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return self.Places.count
        
    }
    


     func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        
        let cell1:MyCollectionViewCell = self.mCollectionView.dequeueReusableCellWithReuseIdentifier("MyCell", forIndexPath: indexPath) as! MyCollectionViewCell
        
        
//        let cell:UICollectionViewCell = self.mCollectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath)
        
        cell1.backgroundColor = UIColor .yellowColor()
        
        let image = UIImage(named: placeimages[indexPath.row])
        cell1.imageLbl.image = image
        
        cell1.placeLbl.text = self.Places[indexPath.row]
        return cell1
        
    }
    
 func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
                let Vc = storyboard?.instantiateViewControllerWithIdentifier("ViewController2") as? ViewController2
                Vc?.itempass = Places[indexPath.row]
        
                Vc?.imagepass = placeimages[indexPath.row]
        
                self.navigationController?.pushViewController(Vc!, animated: true)

    }
    
    func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        
        return true
        
        
    }
    
    func collectionView(collectionView: UICollectionView, didHighlightItemAtIndexPath indexPath: NSIndexPath) {
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
