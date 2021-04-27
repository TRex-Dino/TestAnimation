//
//  SpringModel.swift
//  TestAnimation
//
//  Created by Dmitry on 26.04.2021.
//

import Foundation


class DataManager {
    static let shared = DataManager()
    
    let presets = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
}

enum AnimationPreset: String, CaseIterable {
    case slideLeft
    case slideRight
    case slideDown
    case slideUp
    case squeezeLeft
    case squeezeRight
    case squeezeDown
    case squeezeUp
    case fadeIn
    case fadeOut
    case fadeOutIn
    case fadeInLeft
    case fadeInRight
    case fadeInDown
    case fadeInUp
    case zoomIn
    case zoomOut
    case fall
    case shake
    case pop
    case flipX
    case flipY
    case morph
    case squeeze
    case flash
    case wobble
    case swing
}

enum AnimationCurve: String, CaseIterable {
    case easeIn
    case easeOut
    case easeInOut
    case linear
    case spring
    case easeInSine
    case easeOutSine
    case easeInOutSine
    case easeInQuad
    case easeOutQuad
    case easeInOutQuad
    case easeInCubic
    case easeOutCubic
    case easeInOutCubic
    case easeInQuart
    case easeOutQuart
    case easeInOutQuart
    case easeInQuint
    case easeOutQuint
    case easeInOutQuint
    case easeInExpo
    case easeOutExpo
    case easeInOutExpo
    case easeInCirc
    case easeOutCirc
    case easeInOutCirc
    case easeInBack
    case easeOutBack
    case easeInOutBack
}
