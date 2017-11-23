//
//  ViewController.swift
//  One-image Viewer
//
//  Created by 劉芳瑜 on 2017/11/23.
//  Copyright © 2017年 Fang-Yu. Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var myScrollView: UIScrollView!

    @IBOutlet weak var myImageVIew: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        //The minimum is the size fit boundary of root view.
        self.myScrollView.minimumZoomScale = 1.0
        //The maximum zooming ratio is 2.0
        self.myScrollView.maximumZoomScale = 2.0
        self.myImageVIew.contentMode = .scaleAspectFit
    }
    //Add Zooming func for imgaeView
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return self.myImageVIew
    }


}

