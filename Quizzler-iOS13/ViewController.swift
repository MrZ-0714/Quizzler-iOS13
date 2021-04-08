//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!

    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    
    let quiz = [
        ["quiz 1", "True"],
        ["quiz 2", "False"],
        ["quiz 3", "True"]
    ];
    var qNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI();
        
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let accurateAnswer = quiz[qNumber][1]
        
        //check answer
        if userAnswer == accurateAnswer {
            print("Right answer!")
        } else {
            print("Wrong!")
        }
        
        //move in question array
        if qNumber + 1 < quiz.count {
            qNumber += 1;
        } else {
            qNumber = 0
        }
        
        updateUI();
    }
    
    func updateUI() {
        questionLabel.text = quiz[qNumber][0]
    }
    
}

