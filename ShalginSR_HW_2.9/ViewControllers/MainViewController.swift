//
//  ViewController.swift
//  ShalginSR_HW_2.9
//
//  Created by Станислав on 24.11.2021.
//

import Spring

class MainViewController: UIViewController {

    // MARK: IB Outlets
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var animatedView: SpringView!
    @IBOutlet var runButton: UIButton!
    
    // MARK: Public Properties
    var animationParameters = AnimationParameters()
    
    // MARK: Private Properties
    private var firstStart = false
    
    // MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setRandomAnimationsParam(for: animatedView, from: animationParameters)
        setDescription(for: descriptionLabel)
    }
    
    // MARK: IB Actions
    @IBAction func runButtonPressed() {
        if firstStart {
            setDescription(for: descriptionLabel)
            animatedView.animate()
        } else {
            animatedView.animate()
            firstStart.toggle()
        }
        setRandomAnimationsParam(for: animatedView, from: animationParameters)
        runButton.setTitle("Run \(animatedView.animation)", for: .normal)
    }
}

// MARK: Private Methods
extension MainViewController {
    private func convertToString(from number: CGFloat) -> String {
        String(format: "%.1f", Double(number))
    }
    
    private func setRandomAnimationsParam(for view: SpringView, from list: AnimationParameters) {
        view.animation = list.animation.randomElement() ?? "shake"
        view.curve = list.curve.randomElement() ?? "easeIn"
        view.force = Double.random(in: list.force)
        view.duration = Double.random(in: list.duration)
        view.delay = Double.random(in: list.delay)
    }
    
    private func setDescription(for label: UILabel) {
        label.text = """
    Animation: \(animatedView.animation)
    Curve: \(animatedView.curve)
    Force: \(convertToString(from: animatedView.force))
    Duration: \(convertToString(from: animatedView.duration))
    Delay: \(convertToString(from: animatedView.delay))
    """
    }
}
