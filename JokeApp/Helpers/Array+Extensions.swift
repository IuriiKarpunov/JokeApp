//
//  Array+Extensions.swift
//  JokeApp
//
//  Created by Iurii on 08.07.23.
//

import Foundation

extension Array {
    subscript(safe index: Index) -> Element? {
        indices ~= index ? self[index] : nil
    }
}
