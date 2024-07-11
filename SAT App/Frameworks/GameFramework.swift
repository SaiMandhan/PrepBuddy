//
//  GameFramework.swift
//  SAT App
//
//  Created by Sai Mandhan on 12/16/21.
//

import Foundation
import SwiftUI

struct Game{
    private let questions = Question.allQuestions
    @AppStorage("questionIndex") var questionIndex: Int = 0
    var guesses: [Question: Int] = [Question: Int]()
    var gameOver = false;
    
  
    var questionCount: Int{
        questions.count
    }
    
    var selectionCount: (correct: Int, incorrect: Int){
        var count:(correct: Int, incorrect: Int) = (0,0)
        for (question, guessedIndex) in guesses{
            if guessedIndex == question.correctAnswer{
                count.correct += 1
            }
            else{
                count.incorrect+=1;
            }
        }
        return count
    }
    
    var currentQuestion: Question {
        questions[questionIndex];
    }
    
    mutating func nextQuestion(){
        let nextIndex = questionIndex + 1;
        
        if(!questions.indices.contains(nextIndex)){
            gameOver = true;
            print("Game over");
        }
        else{
            questionIndex = nextIndex;
        }
    }
    
    mutating func makeGuess(at index: Int){
        guesses[currentQuestion] = index
    }
    
    func getSel() -> (Int, Int){
        return selectionCount
    }
}
