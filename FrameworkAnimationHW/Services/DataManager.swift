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
    
    private init() {}
}
