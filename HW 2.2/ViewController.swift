//
//  ViewController.swift
//  HW 2.2
//
//  Created by Zakir on 20.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 15
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        
        

        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)

        
         setColor()
         setValue(for: redLabel, greenLabel, blueLabel)
        
   }


    @IBAction func rgbSlider(_ sender: UISlider) {
    setColor()

         switch sender {
         case redSlider: setValue(for: redLabel)
         case greenSlider: setValue(for: greenLabel)
         default: setValue(for: blueLabel)
       
         }
        
    }
    
    
   
     private func setColor() {
         colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
         )
        
     }
    

    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
 
}

extension ViewController {
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label {
            case redLabel:
                label.text = string(from: redSlider)
            case greenLabel:
                label.text = string(from: greenSlider)
            default:
                label.text = string(from: blueSlider)
               }
          
          }
        
     }
        
}
