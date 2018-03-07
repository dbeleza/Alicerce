//
//  UINavigationController.swift
//  Alicerce
//
//  Created by David Beleza on 07/03/2018.
//  Copyright © 2018 Mindera. All rights reserved.
//

import UIKit

extension UINavigationController {
    
    /// Push UIViewController with a completion block called after animation has finished
    ///
    /// - Parameters:
    ///   - viewController: viewController you want to push
    ///   - animated: animate transition
    ///   - completion: block called after animation
    public func pushViewController(_ viewController: UIViewController, animated: Bool, completion:(()->(Void))?) {
        
        CATransaction.begin()
        CATransaction.setCompletionBlock(completion)
        pushViewController(viewController, animated: animated)
        CATransaction.commit()
    }
}
