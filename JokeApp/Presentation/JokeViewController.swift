//
//  ViewController.swift
//  JokeApp
//
//  Created by Iurii on 11.05.23.
//

import UIKit

class JokeViewController: UIViewController {
    
    

    @IBOutlet private weak var jokeIdLabel: UILabel!
    @IBOutlet private weak var typeLabel: UILabel!
    @IBOutlet private weak var setupLabel: UILabel!
    @IBOutlet private weak var showPunchlineButton: UIButton!
    @IBOutlet weak var refreshButton: UIButton!
    
    private var currentJokeIndex: Int = 0
    private var currentJoke = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabel.layer.addBorder(side: .bottom, thickness: 2, color: UIColor.black.cgColor)
        setupLabel.layer.addBorder(side: .top, thickness: 2, color: UIColor.black.cgColor)
        
        let currentJoke = jokes[currentJokeIndex]
        show(joke: currentJoke)
        print(currentJokeIndex)
    }
    
    let jokes: [JokeModel] = [
            JokeModel(id: 1, type: "general", setup: "What's Forrest Gump's password?", punchline: "1Forrest1"),
            JokeModel(id: 167, type: "numbers", setup: "What did the 0 say to the 8?", punchline: "Nice belt."),
            JokeModel(id: 23, type: "animals", setup: "What do you call a careful wolf?", punchline: "Aware wolf"),
            JokeModel(id: 999, type: "general", setup: "99.9% of the people are dumb!", punchline: "Fortunately I belong to the remaining 1%"),
            JokeModel(id: 834, type: "countries", setup: "What’s the advantage of living in Switzerland?", punchline: "Well, the flag is a big plus."),
            JokeModel(id: 737, type: "programming", setup: "- Knock-knock\n- Who's there?", punchline: "Alert"),
        ]
    
    private func show(joke: JokeModel) {
        jokeIdLabel.text = String(joke.id)
        typeLabel.text = joke.type
        setupLabel.text = joke.setup
    }
    
    private func show(punchline: JokeModel) {
        let alert = UIAlertController(
                    title: "Punchline",
                    message: punchline.punchline,
                    preferredStyle: .alert)
                
                let action = UIAlertAction(title: "Ok", style: .default) { _ in
                    
                }
                    alert.addAction(action)
                    self.present(alert, animated: true, completion: nil)
    }

    @IBAction func tapPunchlineButton(_ sender: Any) {
        let currentJoke = jokes[currentJokeIndex]
        show(punchline: currentJoke)
    }
    
    @IBAction func tapRefreshButton(_ sender: Any) {
        if currentJokeIndex == jokes.count - 1 {
            currentJokeIndex = 0
        } else {
            currentJokeIndex += 1
        }
        let currentJoke = jokes[currentJokeIndex]
        show(joke: currentJoke)
        print(currentJokeIndex)
    }
}

