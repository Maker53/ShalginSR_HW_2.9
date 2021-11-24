//
//  File.swift
//  ShalginSR_HW_2.9
//
//  Created by Станислав on 24.11.2021.
//

import Spring

struct AnimationParameters {
    var animation: [String]
    var curve: [String]
    var force: ClosedRange<Double>
    var duration: ClosedRange<Double>
    var delay: ClosedRange<Double>
    
    init() {
        animation = DataManager.shared.animation
        curve = DataManager.shared.curve
        force = DataManager.shared.force
        duration = DataManager.shared.duration
        delay = DataManager.shared.delay
    }
}
