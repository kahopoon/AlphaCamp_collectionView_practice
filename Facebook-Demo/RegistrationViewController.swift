//
//  RegistrationViewController.swift
//  Facebook-Demo
//
//  Created by Ka Ho on 7/4/2016.
//  Copyright © 2016 Ka Ho. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController, UICollectionViewDataSource, UIScrollViewDelegate {

    @IBOutlet weak var emailButton: UIButton!
    @IBOutlet weak var collectionViewLayOut: UICollectionViewFlowLayout!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    private let pageCellReuseIdentifier = "RegistrationCollectionViewCell"
    let pages = [
        [Constants.image:"image1", Constants.title:"Looking for someone?", Constants.description:"Duis vel urna purus. Morbi sodales lectus ac nisi mollis elementum. Nulla purus lectus, tincidunt vitae pulvinar auctor, finibus vitae dolor. Phasellus rutrum mi vitae libero mollis, suscipit tempor ipsum feugiat. Suspendisse imperdiet felis nunc. Sed at mattis justo, vitae bibendum ligula. Cras fermentum mauris est, eu."],
        [Constants.image:"image2", Constants.title:"What are you waiting for...", Constants.description:"Vestibulum vitae arcu ultricies, eleifend turpis at, tincidunt nibh. Praesent blandit lacus ac lobortis venenatis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce sit amet congue orci, et condimentum diam. Fusce ac augue ut risus scelerisque sagittis. Vestibulum congue nisl."],
        [Constants.image:"image3", Constants.title:"Don't waste your weekend!", Constants.description:"Cras non metus tincidunt, dignissim tellus eget, auctor felis. Fusce at vulputate augue. Integer egestas maximus nunc, vitae lacinia justo cursus vel. In non leo ut urna iaculis volutpat dapibus et ligula. Vivamus suscipit mollis viverra. Lorem ipsum dolor sit."],
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
        
        //fade animation effect
        cell.backgroundColor = UIColor.blackColor()
        cell.alpha = 0
        UIView.animateWithDuration(2, animations: { cell.alpha = 1 })
        
        //page control indicator change
        pageControl.currentPage = indexPath.row
        
        return cell
    }
    
    /*
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        let pageNum = Int(round(scrollView.contentOffset.x / UIScreen.mainScreen().bounds.width))
        self.pageControl.currentPage = pageNum
    }
    */
    
    @IBAction func pageChange(sender: AnyObject) {
        let x = CGFloat(pageControl.currentPage) * self.collectionView.frame.size.width
        self.collectionView.setContentOffset(CGPointMake(x, 0), animated: true)
    }
    
    //cell size
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let width = UIScreen.mainScreen().bounds.width
        let height = UIScreen.mainScreen().bounds.height
        return CGSize(width: width, height: height)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.registerNib(UINib(nibName: pageCellReuseIdentifier, bundle: nil), forCellWithReuseIdentifier: pageCellReuseIdentifier)
        
        //pageControl.currentPage = 0
        pageControl.numberOfPages = pages.count

        //email button apperance
        emailButton.layer.cornerRadius = 3
        let whiteAndBaseline = [NSForegroundColorAttributeName: UIColor.whiteColor(), NSBaselineOffsetAttributeName: 2]
        let space = String(count: Int(UIScreen.mainScreen().bounds.width <= 320 ? UIScreen.mainScreen().bounds.width / 35 : UIScreen.mainScreen().bounds.width / 23), repeatedValue: Character(" "))
        let buttonTitle = NSMutableAttributedString(string: space + "Sing up or Log in with ", attributes: nil)
        let boldEmail = NSMutableAttributedString(string: "Email" + space, attributes: [NSFontAttributeName: UIFont.boldSystemFontOfSize(16.0)])
        buttonTitle.appendAttributedString(boldEmail)
        buttonTitle.addAttributes(whiteAndBaseline, range: NSRange(location: 0,length: buttonTitle.length-1))
        emailButton.setAttributedTitle(buttonTitle, forState: .Normal)
        
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
