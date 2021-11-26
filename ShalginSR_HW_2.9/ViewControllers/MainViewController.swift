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
    
    // MARK: Private Properties
    private var animation = Animation.getRandomAnimation()
        
    // MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        descriptionLabel.text = animation.description
    }
    
    // MARK: IB Actions
    @IBAction func runButtonPressed(_ sender: UIButton) {
        descriptionLabel.text = animation.description

        animatedView.animation = animation.preset
        animatedView.curve = animation.curve
        animatedView.force = animation.force
        animatedView.duration = animation.duration
        animatedView.delay = animation.delay
        animatedView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
}
