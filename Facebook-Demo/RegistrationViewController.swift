//
//  RegistrationViewController.swift
//  Facebook-Demo
//
//  Created by Ka Ho on 7/4/2016.
//  Copyright © 2016 Ka Ho. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    private let pageCellReuseIdentifier = "RegistrationCollectionViewCell"
    
    // MARK: UICollectionViewDataSource
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 3
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(pageCellReuseIdentifier, forIndexPath: indexPath) as! RegistrationCollectionViewCell
        
        /*
         if indexPath.item % 2 == 0 {
         cell.backgroundColor = UIColor.redColor().colorWithAlphaComponent(0.5)
         } else {
         cell.backgroundColor = UIColor.blueColor().colorWithAlphaComponent(0.5)
         cell.imageShow.image = UIImage(named: "bob_yeah")
         }
         */
        // Configure the cell
        
        return cell
    }
    
    /*
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        let width = (UIScreen.mainScreen().bounds.width - 1*5)/1
        let height = width
        return CGSize(width: width, height: height)
    }
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.registerNib(UINib(nibName: pageCellReuseIdentifier, bundle: nil), forCellWithReuseIdentifier: pageCellReuseIdentifier)

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
