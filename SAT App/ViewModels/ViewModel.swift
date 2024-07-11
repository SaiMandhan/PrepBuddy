//
//  ViewModel.swift
//  SAT App
//
//  Created by Sai Mandhan on 12/16/21.
//

import SwiftUI

class gameViewModel : ObservableObject{
    @Published var game = Game();
    
    var question : String{
        game.currentQuestion.questionText;
    }
    
    var type : String{
        game.currentQuestion.type;
    }
    
    var exp : String{
        game.currentQuestion.explanation;
    }
    
    var guessWasMade: Bool{
        game.guesses[game.currentQuestion] != nil;
    }
    
    var gameOver: Bool{
        game.gameOver
    }
    
    var progressText: String{
        "Question \(game.questionIndex + 1)/\(game.questionCount)"
    }
    
    var indices: Range<Int> {
        game.currentQuestion.questionAnswers.indices
    }
    
    var correct : Int{
        game.currentQuestion.correctAnswer;
    }
    
    var selectionCountt: (Int, Int){
        game.selectionCount
        
    }

    func possibleAnswers(for index: Int) -> String {
        game.currentQuestion.questionAnswers[index]
    }
    
    func nextQuestion(){
        game.nextQuestion();
    }
    
    func makeGuess(at index: Int){
        game.makeGuess(at: index)
    }
    
    func colorForButtonCheck(at buttonIndex: Int) -> Color {
        guard let guess = game.guesses[game.currentQuestion], guess == buttonIndex else {return .clear}
        if(guess == correct){
            return .green
        }
        else{
            return .red
        }
    }
    
    func getSelection() -> (Int, Int){
        return selectionCountt
    }
}
