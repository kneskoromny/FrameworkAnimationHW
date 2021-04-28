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
    
    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    @IBOutlet weak var runButton: UIButton!
    
    //MARK: - Private Properties
    private let firstAnimation = Animation.getAnimation()
    private var nextPreset: String?
    private var isFirstLaunch = true
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        springAnimationView.layer.cornerRadius = springAnimationView.frame.height / 10
        runButton.layer.cornerRadius = runButton.frame.height / 3
        
        addParametersForAnimation(
            preset: firstAnimation.preset,
            curve: firstAnimation.curve,
            force: CGFloat(firstAnimation.force),
            duration: CGFloat(firstAnimation.duration),
            delay: CGFloat(firstAnimation.delay)
        )
        
        runButton.setTitle("Run", for: .normal)
    }
    
    //MARK: - IB Actions
    @IBAction func runButtonPressed() {
        
        if isFirstLaunch {
            firstAnimationShow()
            
        } else {
            otherAnimationShow() 
        }
    }
    
    //MARK: - Private Methods
    private func firstAnimationShow() {
 
        springAnimationView.animate()
        
        prepareNextAnimationPreset()
        
        isFirstLaunch = false
    }
    
    private func otherAnimationShow() {
        
        let preset = nextPreset ?? ""
        let curve = DataManager.shared.curves.randomElement() ?? ""
        let force = CGFloat(DataManager.shared.forces.randomElement() ?? 1.0)
        let duration = CGFloat(DataManager.shared.durations.randomElement() ?? 2.0)
        let delay = CGFloat(DataManager.shared.delays.randomElement() ?? 0.2)
        
        addParametersForAnimation(
            preset: preset,
            curve: curve,
            force: force,
            duration: duration,
            delay: delay
        )
        
        springAnimationView.animate()

        prepareNextAnimationPreset()
    }
    
    private func addParametersForAnimation(
        preset: String,
        curve: String,
        force: CGFloat,
        duration: CGFloat,
        delay: CGFloat
    ) {
        presetLabel.text = "preset: \(preset)"
        curveLabel.text = "curve: \(curve)"
        forceLabel.text = "force: \(force)"
        durationLabel.text = "duration: \(duration)"
        delayLabel.text = "delay: \(delay)"
        
        springAnimationView.animation = preset
        springAnimationView.curve = curve
        springAnimationView.force = force
        springAnimationView.duration = duration
        springAnimationView.delay = delay
    }
    
    private func prepareNextAnimationPreset() {
        springAnimationView.transform = .identity
        nextPreset = DataManager.shared.presets.randomElement()
        runButton.setTitle("Run \(nextPreset ?? "")", for: .normal)
    }
    
    

}
