//
//  ViewController.swift
//  RangeSeekSliderDemo
//
//  Created by Keisuke Shoji on 2017/03/08.
//
//

import UIKit
import RangeSeekSlider

final class ViewController: UIViewController {

    @IBOutlet weak var rangeSlider: RangeSeekSlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        rangeSlider.delegate = self
        rangeSlider.minLabelColor = UIColor.blue
        rangeSlider.maxLabelColor = UIColor.blue
        rangeSlider.colorBetweenHandles = UIColor.blue
        rangeSlider.handleColor = UIColor.red
    }
}

// MARK: - RangeSeekSliderDelegate

extension ViewController: RangeSeekSliderDelegate {

    func rangeSeekSlider(_ slider: RangeSeekSlider, didChange minValue: CGFloat, maxValue: CGFloat) {
       print(minValue)
        print(maxValue)
    }

    func didStartTouches(in slider: RangeSeekSlider) {
       // print("did start touches")
    }

    func didEndTouches(in slider: RangeSeekSlider) {
       // print("did end touches")
    }
}
