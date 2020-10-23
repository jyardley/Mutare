//
//  ShareApp.swift
//  Mutare
//
//  Created by Jeff Yardley on 4/15/17.
//  Copyright © 2017-2020 Jeff Yardley. All rights reserved.
//  Updated for Swift 5.0 Syntax on 10-1-2020
//

import Foundation
import Social
import UIKit

class ShareAppViewController: UIViewController{
    
    
    
    @IBAction func FacebookShare(_ sender: Any) {
        if let vc = SLComposeViewController(forServiceType: SLServiceTypeFacebook) {
            vc.setInitialText("Play Mutare! A cross between chess and a card game! Now on the Apple App Store")
            vc.add(UIImage(named: "MutareShareAdvert.png")!)
            present(vc, animated: true)
        }
        
    }
    
    
    @IBAction func TwitterShare(_ sender: Any) {
        if let vc = SLComposeViewController(forServiceType: SLServiceTypeTwitter) {
            vc.setInitialText("Play Mutare! A cross between chess and a card game! Now on the Apple App Store")
            vc.add(UIImage(named: "MutareShareAdvert.png")!)
            present(vc, animated: true)
        }

        
    }
    
    
}
