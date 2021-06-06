//
//  HomeViewController.swift
//  LittlePink
//
//  Created by 杨杰 on 2021/5/10.
//

import UIKit
import XLPagerTabStrip

class HomeViewController: ButtonBarPagerTabStripViewController {

    override func viewDidLoad() {
        
        // MARK: Bar Settings
        
        settings.style.selectedBarBackgroundColor = UIColor(named: "BrandColor") ?? .systemPink
        settings.style.selectedBarHeight = 3.0
        
        settings.style.buttonBarItemBackgroundColor = .clear
        settings.style.buttonBarItemFont = .systemFont(ofSize: 16)
        settings.style.buttonBarItemLeftRightMargin = 0.0
        
        super.viewDidLoad()
        
        // MARK: Bar Lable Color
        
        changeCurrentIndexProgressive = { (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, _ animated: Bool) -> Void in
            
            oldCell?.label.textColor = .secondaryLabel
            newCell?.label.textColor = .label
        }
        
        // MARK: Others
        
        containerView.bounces = false
        
        DispatchQueue.main.async {
            self.moveToViewController(at: 1, animated: false)
        }
    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        
        let followVC = storyboard!.instantiateViewController(identifier: kFollowViewControllerID)
        let discoveryVC = storyboard!.instantiateViewController(identifier: kDiscoveryViewControllerID)
        let nearVC = storyboard!.instantiateViewController(identifier: kNearViewControllerID)
        
        return [followVC, discoveryVC, nearVC]
    }
}
