//
//  UIViewControllerExt.swift
//  Goalpost
//
//  Created by Anmol Kalra on 18/08/20.
//  Copyright © 2020 Anmol Kalra. All rights reserved.
//

import UIKit

extension UIViewController{
    func presentDetail(_ viewControllerToPresent: UIViewController){
        let transtion = CATransition()
        transtion.duration = 0.3
        transtion.type = CATransitionType.push
        transtion.subtype = CATransitionSubtype.fromRight
        self.view.window?.layer.add(transtion, forKey: kCATransition)
        viewControllerToPresent.modalPresentationStyle = .fullScreen
        present(viewControllerToPresent, animated: false, completion: nil)
        
    }
    
    func presentSecondaryDetail(_ viewControllerToPresent: UIViewController){
        let transtion = CATransition()
        transtion.duration = 0.3
        transtion.type = CATransitionType.push
        transtion.subtype = CATransitionSubtype.fromRight
        viewControllerToPresent.modalPresentationStyle = .fullScreen
        guard let presentedViewController = presentedViewController else { return }
        
        presentedViewController.dismiss(animated: false) {
            self.view.window?.layer.add(transtion, forKey: kCATransition)
            self.present(viewControllerToPresent, animated: false, completion: nil)
        }
    }
    
    func dismissDetail(){
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromLeft
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        dismiss(animated: false, completion: nil)
    }
}
