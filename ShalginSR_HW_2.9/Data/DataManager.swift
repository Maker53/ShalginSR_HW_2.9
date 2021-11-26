//
//  DataManager.swift
//  ShalginSR_HW_2.9
//
//  Created by Станислав on 24.11.2021.
//

import Spring

class DataManager {
    static let shared = DataManager()
    
    var presets = Spring.AnimationPreset.allCases
    var curves = Spring.AnimationCurve.allCases
    
    private init() {}
}
