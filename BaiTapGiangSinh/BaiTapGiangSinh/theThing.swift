//
//  theThing.swift
//  BaiTapGiangSinh
//
//  Created by Luong Quang Huy on 12/23/19.
//  Copyright © 2019 Luong Quang Huy. All rights reserved.
//

import UIKit

class theThing: UIImageView {
    var currentImage: UIImage?
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.contentMode = .scaleToFill
        self.backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
