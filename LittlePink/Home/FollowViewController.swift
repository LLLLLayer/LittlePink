//
//  FollowViewController.swift
//  LittlePink
//
//  Created by 杨杰 on 2021/5/11.
//

import UIKit
import XLPagerTabStrip

class FollowViewController: UIViewController, IndicatorInfoProvider {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        IndicatorInfo(title: NSLocalizedString("Follow", comment: ""))
    }

}
