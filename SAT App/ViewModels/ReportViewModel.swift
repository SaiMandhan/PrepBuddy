//
//  ReportViewModel.swift
//  SAT App
//
//  Created by Sai Mandhan on 12/31/21.
//

import Foundation

struct ReportViewModel{
    let selection: (correct:Int, incorrect:Int)
    
    var Percent: String{
        "\(score)"
    }
    
    var questionsAnswered: String{
        "\(total)"
    }
    
    var questionsCorrect: String{
       "\(selection.correct)"
    }
    
    var questionsInccorect: String{
        "\(selection.incorrect)"
    }
    
    var progressText: Double{
        Double(score2)
    }
    private var score: Int{
        if (selection.correct + selection.incorrect) != 0 {
            return selection.correct*100 / (selection.correct + selection.incorrect)
        } else {
            return 0
        }
    }
    
    private var score2: Double{
        Double (selection.correct) / Double (selection.correct + selection.incorrect)
    }
    
    
    private var total: Int{
        (selection.correct + selection.incorrect)
    }
}
