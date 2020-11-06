//
//  CustomeView.swift
//  BMICodeCal
//
//  Created by namit on 11/5/20.
//

import UIKit

class CustomeView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    convenience init(_ image: UIImageView,_ color: UIColor) {
        self.init()
        self.backgroundColor = color
        self.layer.cornerRadius = 5
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
