//
//  ViewController.swift
//  TestAnimation
//
//  Created by Dmitry on 26.04.2021.
//

import Spring
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet var animationView: SpringView!
    @IBOutlet var showPropertyLabel: UILabel!
    
    var nextAnimation = SpringModel.getAnimation()
    private var audioPlayer: AVAudioPlayer!
    
    @IBAction func buttonPresed(_ sender: UIButton) {
        nextAnimation = SpringModel.getAnimation()
        
        sender.setTitle("\(nextAnimation.preset)", for: .normal)
        showPropertyLabel.text = nextAnimation.title
        
        animatedView()
        
        if nextAnimation.preset == "flipX" || nextAnimation.preset == "flipY" {
            playSound()
        }
    }
    
    private func animatedView() {
        animationView.animation = nextAnimation.preset
        animationView.curve = nextAnimation.curve
        animationView.force = CGFloat(nextAnimation.force)
        animationView.duration = CGFloat(nextAnimation.duration)
        animationView.delay = CGFloat(nextAnimation.delay)
        
        animationView.animate()
    }
    
    private func playSound() {
        if let sound = NSDataAsset(name: "swoosh") {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("Error \(error.localizedDescription)")
            }
        } else {
            print("Error with data \("swoosh")")
        }
    }
}

