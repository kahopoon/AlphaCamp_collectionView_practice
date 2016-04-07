//
//  RegistrationViewController.swift
//  Facebook-Demo
//
//  Created by Ka Ho on 7/4/2016.
//  Copyright © 2016 Ka Ho. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController, UICollectionViewDataSource {

    @IBOutlet weak var collectionViewLayOut: UICollectionViewFlowLayout!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    private let pageCellReuseIdentifier = "RegistrationCollectionViewCell"
    let pages = [
        [Constants.image:"image1", Constants.title:"Girl 1", Constants.description:"image 1"],
        [Constants.image:"image2", Constants.title:"Girl 2", Constants.description:"image 2"],
        [Constants.image:"image3", Constants.title:"Girl 3", Constants.description:"image 3"],
    ]
    
    // MARK: UICollectionViewDataSource
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return pages.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(pageCellReuseIdentifier, forIndexPath: indexPath) as! RegistrationCollectionViewCell
        let page = pages[indexPath.item]
        cell.pageImageView.image = UIImage(named: page["image"]!)
        cell.titleLabel.text = page["title"]
        cell.descriptionLabel.text = page["description"]
        pageControl.currentPage = indexPath.item

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
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        let width = UIScreen.mainScreen().bounds.width
        let height = UIScreen.mainScreen().bounds.height - 170
        return CGSize(width: width, height: height)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.registerNib(UINib(nibName: pageCellReuseIdentifier, bundle: nil), forCellWithReuseIdentifier: pageCellReuseIdentifier)
        
        //pageControl.currentPage = 0
        pageControl.numberOfPages = pages.count

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
