//
//  ViewController.swift
//  colorPalette
//
//  Created by Macbook on 18.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var paletteView: UIView!
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        paletteView.layer.cornerRadius = 20
    }

    @IBAction func redSliderAction() {
        let redSliderValue = CGFloat(redSlider.value)
        redValueLabel.text = aroundNumber(redSliderValue)
        paletteView.backgroundColor = UIColor(displayP3Red: redSliderValue, green: 0xFF, blue: 0xFF, alpha: 1)
        
    }
    
    @IBAction func greenSliderAction() {
        let greenSliderValue = CGFloat(greenSlider.value)
        greenValueLabel.text = aroundNumber(greenSliderValue)
        paletteView.backgroundColor = UIColor(displayP3Red: 0xFF, green: greenSliderValue, blue: 0xFF, alpha: 1)
    }
    @IBAction func blueSliderAction() {
        let blueSliderValue = CGFloat(blueSlider.value)
        blueValueLabel.text = aroundNumber(blueSliderValue)
        paletteView.backgroundColor = UIColor(displayP3Red: 0xFF, green: 0xFF, blue: blueSliderValue, alpha: 1)
    }
    
    private func aroundNumber(_ number: CGFloat) -> String {
        String(format: "%.2f", number)
    }
}

