//
//  ViewController.swift
//  RgbSliders
//
//  Created by veronika on 17.02.26.
//

import UIKit

final class ViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet var colorDisplayView: UIView!
    
    @IBOutlet var redColorValueLabel: UILabel!
    @IBOutlet var greenColorValueLabel: UILabel!
    @IBOutlet var blueColorValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    // MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        colorDisplayView.layer.cornerRadius = 15
        setupRedSlider()
        setupGreenSlider()
        setupBlueSlider()

    }
    
    //MARK: IBActions
    @IBAction func changeRedSlider() {
        redColorValueLabel.text = ((redSlider.value * 100).rounded()/100)
            .formatted()
    }
        
    @IBAction func changeGreenSlider() {
        greenColorValueLabel.text = ((greenSlider.value * 100).rounded()/100)
            .formatted()
    }
    
    @IBAction func changeBlueSlider() {
        blueColorValueLabel.text = ((blueSlider.value * 100).rounded()/100)
            .formatted()
    }
    
    // MARK: Setup Sliders
    private func setupRedSlider() {
        redSlider.value = 1
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .red
        redSlider.maximumTrackTintColor = .gray
        redSlider.setValue(0, animated: true)
    }
    
    private func setupGreenSlider() {
        greenSlider.value = 1
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green
        greenSlider.maximumTrackTintColor = .gray
        greenSlider.setValue(0, animated: true)
    }
    
    private func setupBlueSlider() {
        blueSlider.value = 1
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .cyan
        blueSlider.maximumTrackTintColor = .gray
        blueSlider.setValue(0, animated: true)
    }
    

}

