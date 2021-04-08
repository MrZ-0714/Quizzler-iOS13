//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Zimo Zhao on 4/8/21.
//

import Foundation
struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        self.text = q
        self.answer = a
    }
}
