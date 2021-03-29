//
//  ViewController.swift
//  LaunchScreen
//
//  Created by 河村大介 on 2021/03/28.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        let backView = view.viewWithTag(1)
        let fooView = view.viewWithTag(2)
        // 少し縮小するアニメーション
        UIView.animate(withDuration: 0.3, delay: 1.0,
                       options: UIView.AnimationOptions.curveEaseOut,
                       animations: { () in
                        fooView!.transform = CGAffineTransform(scaleX: 0.3, y: 0.3)
                                   }, completion: { (Bool) in

                               })

        // 拡大して消えるアニメーション
        UIView.animate(withDuration: 0.2, delay: 1.3,
                       options: UIView.AnimationOptions.curveEaseOut,
                       animations: { () in
                        fooView!.transform = CGAffineTransform(scaleX: 15.0, y: 15.0)
                       }, completion: { (Bool) in
                        backView!.removeFromSuperview()
                       })
    }
}

