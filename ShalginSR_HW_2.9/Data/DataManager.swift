//
//  DataManager.swift
//  ShalginSR_HW_2.9
//
//  Created by Станислав on 24.11.2021.
//

class DataManager {
    static let shared = DataManager()
    
    var animation = [
        "shake", "squeeze", "wobble", "swing", "flipX",
        "flipY", "zoomIn", "zoomOut", "flash"
    ]
    
    var curve = ["springlinear", "easeIn", "easeOut", "easeInOut"]
    
    let force = 0.1...3.0
    let duration = 0.1...2.0
    let delay = 0.1...0.3
    
    private init() {}
}
