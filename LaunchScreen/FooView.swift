//
//  FooView.swift
//  LaunchScreen
//
//  Created by 河村大介 on 2021/03/28.
//

import UIKit

class FooView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.loadNib()
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.loadNib()
    }
    
    fileprivate func loadNib() {
        guard let splashView = UINib(nibName: "FooView", bundle: nil).instantiate(withOwner: self, options: nil).first as? UIView else {
            return
        }
        
        splashView.frame = self.bounds
        self.addSubview(splashView)
    }

}
