//
//  Model.swift
//  FrameworkAnimationHW
//
//  Created by Кирилл Нескоромный on 28.04.2021.
//

struct Animation {
    
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.2f", force))
        duration: \(String(format: "%.2f", duration))
        delay: \(String(format: "%.2f", delay))
        
        """
    }
    
    static func getAnimation() -> Animation {
        Animation(
            preset: DataManager.shared.presets.randomElement() ?? "slideLeft",
            curve: DataManager.shared.curves.randomElement() ?? "easeIn",
            force: Double.random(in: 1...2),
            duration: Double.random(in: 2...3),
            delay: 0.5
        )
    }
}
