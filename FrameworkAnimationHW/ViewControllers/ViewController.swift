//
//  ViewController.swift
//  FrameworkAnimationHW
//
//  Created by Кирилл Нескоромный on 28.04.2021.
//

import Spring

class ViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet weak var springAnimationView: SpringView!
    
   
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var runButton: UIButton!
    
    //MARK: - Private Properties
    private var animation = Animation.getAnimation()
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        springAnimationView.applyDesign(divisorFrame: 10)
        runButton.applyDesign(divisorFrame: 3)
        
        descriptionLabel.text = animation.description
        
        runButton.setTitle("Run", for: .normal)
    }
    
    //MARK: - IB Actions
    @IBAction func runButtonPressed() {
        
        descriptionLabel.text = animation.description
        
        springAnimationView.animation = animation.preset
        springAnimationView.curve = animation.curve
        springAnimationView.force = CGFloat(animation.force)
        springAnimationView.duration = CGFloat(animation.duration)
        springAnimationView.delay = CGFloat(animation.delay)
        
        springAnimationView.animate()
        changeViewColors()
        
        animation = Animation.getAnimation()
        runButton.setTitle("Run \(animation.preset)", for: .normal)
   
    }
    
    //MARK: - Private Methods
    private func changeViewColors() {
        let red = Int.random(in: 1...255)
        let green = Int.random(in: 1...255)
        let blue = Int.random(in: 1...255)
        
        UIView.animate(withDuration: 1.0) {
            self.view.backgroundColor = UIColor(
                red: CGFloat(red)/255,
                green: CGFloat(green)/255,
                blue: CGFloat(blue)/255,
                alpha: 1.0
            )
        }
        springAnimationView.backgroundColor = UIColor(
            red: CGFloat(255 - red)/255,
            green: CGFloat(255 - green)/255,
            blue: CGFloat(255 - blue)/255,
            alpha: 1.0
        )
    }
}


