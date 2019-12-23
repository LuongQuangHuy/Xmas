//
//  ViewController.swift
//  BaiTapGiangSinh
//
//  Created by Luong Quang Huy on 12/23/19.
//  Copyright © 2019 Luong Quang Huy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var xmasTree: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var xmasBall: UIImageView!
    @IBOutlet weak var xmasToys: UIImageView!
    @IBOutlet weak var xmasShock: UIImageView!
    @IBOutlet weak var xmasBell: UIImageView!
    var selectedImage: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "Chọn một đồ vật để trang trí cho cây thông"
        setAction()
    }
    func setAction(){
        xmasBall.isUserInteractionEnabled = true
        xmasBall.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onBall)))
        xmasToys.isUserInteractionEnabled = true
        xmasToys.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onToys)))
        xmasShock.isUserInteractionEnabled = true
        xmasShock.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onShock)))
        xmasBell.isUserInteractionEnabled = true
        xmasBell.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onBell)))
    }
    
    @objc func onBall(){
        selectedImage = "XmasBall1"
        label.text = "Click vị trí treo bóng đèn lên cây thông"
        xmasTree.isUserInteractionEnabled = true
        xmasTree.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(addOn(_:))))
    }
    
    @objc func onToys(){
        selectedImage = "XmasToys"
        label.text = "Click vị trí treo đồ chơi lên cây thông"
        xmasTree.isUserInteractionEnabled = true
        xmasTree.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(addOn(_:))))
    }
    
    @objc func onShock(){
        selectedImage = "XmasShock"
        label.text = "Click vị trí treo tất lên cây thông"
        xmasTree.isUserInteractionEnabled = true
        xmasTree.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(addOn(_:))))
    }
    
    @objc func onBell(){
        selectedImage = "XmasBell"
        label.text = "Click vị trí treo chuông lên cây thông"
        xmasTree.isUserInteractionEnabled = true
        xmasTree.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(addOn(_:))))
    }
    
    @objc func addOn(_ sender: UITapGestureRecognizer){
        print(sender.location(in: xmasTree))
        let location: CGPoint = sender.location(in: xmasTree)
        let width = xmasBall.frame.size.width/2
        let height = xmasBall.frame.size.height/2
        let size: CGSize = CGSize(width: width, height: height)
        let currentThing: theThing = {
            let currentThing = theThing(frame: CGRect(origin: location, size: size))
            currentThing.image = UIImage(named: selectedImage)
            return currentThing
        }()
        xmasTree.addSubview(currentThing)
    }
}

