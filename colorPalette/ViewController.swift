//
//  ViewController.swift
//  colorPalette
//
//  Created by lpk on 18.10.2020.
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
    
    var redSliderValue: CGFloat = 0.0
    var greenSliderValue: CGFloat = 0.0
    var blueSliderValue: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        paletteView.layer.cornerRadius = 20
    }

    @IBAction func redSliderAction() {
        redSliderValue = CGFloat(redSlider.value)
        redValueLabel.text = aroundNumber(redSliderValue)
        paletteView.backgroundColor = UIColor(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue)
    }
    
    @IBAction func greenSliderAction() {
        greenSliderValue = CGFloat(greenSlider.value)
        greenValueLabel.text = aroundNumber(greenSliderValue)
        paletteView.backgroundColor = UIColor(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue)
    }
    @IBAction func blueSliderAction() {
        blueSliderValue = CGFloat(blueSlider.value)
        blueValueLabel.text = aroundNumber(blueSliderValue)
        paletteView.backgroundColor = UIColor(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue)
    }
    
    private func aroundNumber(_ number: CGFloat) -> String {
        String(format: "%.2f", number)
    }
}

