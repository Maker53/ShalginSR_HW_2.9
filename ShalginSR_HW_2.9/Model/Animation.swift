//
//  File.swift
//  ShalginSR_HW_2.9
//
//  Created by Станислав on 24.11.2021.
//

import Spring

struct Animation {
    var preset: String
    var curve: String
    var force: Double
    var duration: Double
    var delay: Double
    
    var description: String {
        """
        Preset: \(preset)
        Curve: \(curve)
        Force: \(String(format: "%.02f", force))
        Duration: \(String(format: "%.02f", duration))
        Delay: \(String(format: "%.02f", delay))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            preset: DataManager.shared.presets.randomElement()?.rawValue ?? "slideLeft",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 0.3...1.0),
            duration: Double.random(in: 1.0...2.0),
            delay: Double.random(in: 0.1...0.5)
        )
    }
}
