//
//  DataManager.swift
//  FrameworkAnimationHW
//
//  Created by Кирилл Нескоромный on 28.04.2021.
//

class DataManager  {
    
    static let shared = DataManager()
    
    let presets = [
        "shake", "pop", "morph", "squeeze", "wobble", "swing", "flipX",
        "flipY", "fall", "squeezeLeft", "squeezeRight", "squeezeDown",
        "squeezeUp", "slideLeft", "slideRight", "slideDown", "slideUp",
        "fadeIn", "fadeOut", "fadeInLeft", "fadeInRight", "fadeInDown",
        "fadeInUp", "zoomIn", "zoomOut", "flash"
    ]
    
    let curves = [
        "spring", "linear", "easeIn", "easeOut", "easeInOut"
    ]
    
    let forces = [1.0, 1.2, 1.4, 1.6, 1.8, 2.0]
    
    let durations = [1.0, 1.5, 2.0, 2,5, 3.0]
    
    let delays = [0.2, 0.4, 0.6, 0.8, 1.0]
    
    private init() {}
}
