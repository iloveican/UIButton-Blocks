//
//  SwiftViewController.swift
//  
//
//  Created by MOMO on 2017/4/24.
//
//

import UIKit

class SwiftViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        let btn = UIButton(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: 100, height: 100)))
        btn.center = view.center
        btn.backgroundColor = UIColor.purple
        btn.setTitle("SwiftVC", for: UIControlState.normal)
        view.addSubview(btn)
        
        btn.handleClick { (btn:UIButton?) in
            print("\("SwiftViewController") \(#function)")
            
        }

        
    }

   

}
