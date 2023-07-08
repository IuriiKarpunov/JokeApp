//
//  JokeFactoryDelegate.swift
//  JokeApp
//
//  Created by Iurii on 08.07.23.
//

import Foundation

protocol JokeFactoryDelegate {
    func didReceiveNextJoke(joke: JokeModel?)
}
