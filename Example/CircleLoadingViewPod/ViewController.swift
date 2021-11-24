//
//  ViewController.swift
//  CircleLoadingViewPod
//
//  Created by frostmarchesan on 11/24/2021.
//  Copyright (c) 2021 frostmarchesan. All rights reserved.
//

import UIKit
import CircleLoadingViewPod

class ViewController: UIViewController {

    @IBOutlet weak var circleViewConteiner: UIView!
    
    private var isShowingCircleView = true
    let circle1 = CircleLoadingView()
    let circle2 = CircleLoadingView()
    let circle3 = CircleLoadingView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        controlCircle()
    }
    
    @IBAction func switchCircleView(_ sender: UISwitch) {
        isShowingCircleView.toggle()
        controlCircle()
    }
    
    private func controlCircle() {
        if (isShowingCircleView) {
            configureSpinningCircle1()
            configureSpinningCircle2()
            configureSpinningCircle3()
            circleViewConteiner.addSubview(circle1)
            circleViewConteiner.addSubview(circle2)
            circleViewConteiner.addSubview(circle3)
        } else {
            self.circle1.stopAnimation()
            self.circle2.stopAnimation()
            self.circle3.stopAnimation()

            self.circle1.removeFromSuperview()
            self.circle2.removeFromSuperview()
            self.circle3.removeFromSuperview()
        }
    }
    
    private func configureSpinningCircle1() {
        circle1.frame = CGRect(x: circleViewConteiner.frame.width / 2 - 50 , y: circleViewConteiner.frame.height / 2 - 50, width: 100, height: 100)
        circle1.configureShape(lineColor: UIColor.systemBlue.cgColor, lineWidth: 6, strokeStart: 0.1, strokeEnd: 0.4, speed: 1.5)
        view.addSubview(circle1)
    }
    
    private func configureSpinningCircle2() {
        circle2.frame = CGRect(x: circleViewConteiner.frame.width / 2 - 40 , y: circleViewConteiner.frame.height / 2 - 40, width: 80, height: 80)
        circle2.configureShape(lineColor: UIColor.gray.cgColor, lineWidth: 6, strokeStart: 0.2, strokeEnd: 0.6, speed: 1)
    }

    private func configureSpinningCircle3() {
        circle3.frame = CGRect(x: circleViewConteiner.frame.width / 2 - 60 , y: circleViewConteiner.frame.height / 2 - 60, width: 120, height: 120)
        circle3.configureShape(lineColor: UIColor.blue.cgColor, lineWidth: 6, strokeStart: 0.3, strokeEnd: 0.7, speed: 1)
    }

}

