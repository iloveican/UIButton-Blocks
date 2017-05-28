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
        self.title = "touchesBegan to pop"
        view.backgroundColor = UIColor.white
        view.addSubview(self.button)
        
        self.button .handleTouchUpInsideEvent { (_) in
            print("\("SwiftViewController") \(#function)")

        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        navigationController?.popViewController(animated: true)
    }
    
    lazy var button:UIButton = {
        let btn = UIButton(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: 100, height: 100)))
        btn.backgroundColor = UIColor.purple
        btn.setTitle("SwiftButton", for: UIControlState.normal)
        btn.center = self.view.center
        self.view.addSubview(btn)
        return btn;
    }()
    
}
