//
//  OImageSliderViewController.swift
//  OImageSliderIOS
//
//  Created by mac on 11/8/18.
//  Copyright © 2018 ouail. All rights reserved.
//

import UIKit
import AlamofireImage
class OImageSliderViewController: UIViewController ,UIScrollViewDelegate {
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    var imagesUrls:Array<String>?
    var selectedIndex:Int?
    var activeColor,normalColor:UIColor?
    var backgroundColor:UIColor?
    
    let defaultImage = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        scrollView.contentSize = CGSize(width: self.view.bounds.width * CGFloat((imagesUrls?.count)!), height: self.view.bounds.height)
        
        pageControl.numberOfPages = (imagesUrls?.count)!
        
        putAllImages()
        initSelected()
        initCustomColors()
    }
    
    func initSelected() {
        if selectedIndex != nil {
            setImage(index: selectedIndex!)
        }else{
            //setImage(index: 0)
        }
    }
    func putAllImages() {
        var i = 0
        for img in imagesUrls! {
            let bundle = Bundle(for: ItemSlider.self)
            if let myView =  UINib(nibName: "ItemView", bundle: bundle).instantiate(withOwner: self, options: nil).first as? ItemSlider {
                myView.imageView.af_setImage(
                    withURL: URL(string:(imagesUrls![i]))!,
                    placeholderImage: defaultImage,
                    imageTransition: .crossDissolve(0.2)
                )
                scrollView.addSubview(myView)
                myView.frame.size.width = self.view.bounds.width
                myView.frame.origin.x = CGFloat(i) * self.view.bounds.size.width
            }
            i = i + 1
        }
    }
    func setImage(index:Int)  {
        let view: CGRect = scrollView!.frame
        let offset = view.size.width * CGFloat(index)

        scrollView.contentOffset.x = CGFloat(offset)
        pageControl.currentPage = index
      
    }
    
    @IBAction func exit(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let page = scrollView.contentOffset.x / scrollView.frame.size.width
        pageControl.currentPage = Int(page)
    }
    
    func initCustomColors() {
        if activeColor != nil {
            pageControl.currentPageIndicatorTintColor = activeColor
        }
        if normalColor != nil {
            pageControl.pageIndicatorTintColor = normalColor
        }
        if backgroundColor != nil {
            self.view.backgroundColor = backgroundColor
        }
    }
    
}
