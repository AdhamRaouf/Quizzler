    //
    //  Questions.swift
    //  Quizzler-iOS13
    //
    //  Created by Adham Raouf on 30/01/2023.
    //  Copyright © 2023 The App Brewery. All rights reserved.
    //

import Foundation

struct Question {
    let text : String
    let answer : String
    
    init(Q: String, A: String) {
        text = Q
        answer = A
    }
}


struct QuizBrain {
    
    let quiz = [
        Question(Q: "111111A slug's blood is green.",
                 A: "True"),
        Question(Q: "Approximately one quarter of human bones are in the feet.",
                 A: "True"),
        Question(Q: "The total surface area of two human lungs is approximately 70 square metres.",
                 A: "True"),
        Question(Q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.",
                 A: "True"),
        Question(Q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.",
                 A: "False"),
        Question(Q: "It is illegal to pee in the Ocean in Portugal.",
                 A: "True"),
        Question(Q: "You can lead a cow down stairs but not up stairs.",
                 A: "False"),
        Question(Q: "Google was originally called 'Backrub'.",
                 A: "True"),
        Question(Q: "Buzz Aldrin's mother's maiden name was 'Moon'.",
                 A: "True"),
        Question(Q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.",
                 A: "False"),
        Question(Q: "No piece of square dry paper can be folded in half more than 7 times.",
                 A: "False"),
        Question(Q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.",
                 A: "True")
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool{
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        }else{
              return false
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else  {
            questionNumber = 0
            score = 0
        }
    }
    
    
}
