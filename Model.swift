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
    
    static func getAnimation() -> Animation {
        Animation(
            preset: DataManager.shared.presets.randomElement() ?? "",
            curve: DataManager.shared.curves.randomElement() ?? "",
            force: DataManager.shared.forces.randomElement() ?? 1.0,
            duration: DataManager.shared.durations.randomElement() ?? 2.0,
            delay: DataManager.shared.delays.randomElement() ?? 0.2
        )
    }
}
