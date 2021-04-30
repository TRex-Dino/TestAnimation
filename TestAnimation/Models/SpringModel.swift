//
//  SpringModel.swift
//  TestAnimation
//
//  Created by Dmitry on 27.04.2021.
//

import Foundation

struct SpringModel {
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var title: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.2f", force))
        duration: \(String(format: "%.2f", duration))
        delay: \(String(format: "%.2f", delay))
        """
    }
}

extension SpringModel {
    static func getAnimation() -> SpringModel {
        let data = DataManager.shared
        return SpringModel(
            preset: data.presets.randomElement()?.rawValue ?? "slideLeft",
            curve: data.curves.randomElement()?.rawValue ?? "easeIn",
            force: Float.random(in: 0.5...1.5),
            duration: Float.random(in: 0.5...1),
            delay: Float.random(in: 0.3...0.6)
        )
    }
}

