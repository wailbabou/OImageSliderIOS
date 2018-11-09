//
//  OImageSlider.swift
//  OImageSliderIOS
//
//  Created by mac on 11/8/18.
//  Copyright © 2018 ouail. All rights reserved.
//

import Foundation
import UIKit
public class OImageSlider {
    var imagesUrls:Array<String>?
    var selectedIndex:Int?
    var activeColor,normalColor:UIColor?
    var backgroundColor:UIColor?
    
    
    public init() {
        
    }
    public func setImageUrls(images:Array<String>)-> OImageSlider {
        self.imagesUrls = images
        return self
    }
    public func setSelectedIndex(selectedIndex:Int) -> OImageSlider {
        self.selectedIndex = selectedIndex
        return self
    }
    public func setIndicatorActiveColor(color:UIColor) -> OImageSlider {
        self.activeColor = color
        return self
    }
    public func setIndicatorNormalColor(color:UIColor) -> OImageSlider {
        self.normalColor = color
        return self
    }
    public func setBackground(color:UIColor) -> OImageSlider {
        self.backgroundColor = color
        return self
    }
    
    public func start(vc:UIViewController){
        print("start")
        let storyboard = UIStoryboard(name: "Storyboard", bundle: Bundle(for: OImageSliderViewController.self))
        let viewController = storyboard.instantiateViewController(withIdentifier :"myCustomController") as! OImageSliderViewController
        if imagesUrls != nil {
            viewController.imagesUrls = imagesUrls!
        }
        if selectedIndex != nil {
            viewController.selectedIndex = selectedIndex!
        }
        if activeColor != nil {
            viewController.activeColor = activeColor!
        }
        if normalColor != nil {
            viewController.normalColor = normalColor!
        }
        if backgroundColor != nil {
            viewController.backgroundColor = backgroundColor!
        }
        vc.present(viewController, animated: true)
    }
    
}
