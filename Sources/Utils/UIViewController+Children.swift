//
//  UIViewController+Children.swift
//  ForceScroll
//
//  Created by Andrej Rylov on 27/11/16.
//  Copyright © 2016 Nosorog Studio. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func addChildControllerAndView(_ child: UIViewController) {
        self.addChildViewController(child)
        self.view.addSubview(child.view)
        Constraints.matchSuperview(child.view)
    }
    
    func addChildControllerAndView(_ child: UIViewController, toView superview: UIView) {
        self.addChildViewController(child)
        superview.addSubview(child.view)
        Constraints.matchSuperview(child.view)
    }
    
    func removeChildControllerAndView(_ child: UIViewController) {
        child.removeFromParentViewController()
        child.view.removeFromSuperview()
    }
}
