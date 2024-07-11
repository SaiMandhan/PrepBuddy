//
//  ContentView.swift
//  SAT App
//
//  Created by Sai Mandhan on 12/13/21.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var viewModel: gameViewModel
    var body: some View {
        NavigationView{
            
            
            ZStack {
                LinearGradient(
                            gradient: Gradient(colors: [Color(red: 102/255, green: 45/255, blue: 145/255),
                                                        Color(red: 0, green: 116/255, blue: 178/255)]),
                            startPoint: .bottomTrailing,
                            endPoint: .topLeading
                        )
                        .ignoresSafeArea()
                
                    .toolbar {
                        ToolbarItem(placement: .primaryAction) {
                            if(viewModel.guessWasMade == false && viewModel.type == "Calculator"){
                                HStack{
                                    Spacer()
                                    NavigationLink(destination: CalculatorView()) {
                                        Image("calcul")
                                            .resizable()
                                            .scaledToFill()
                                    }
                                }
                            }
                        }
                        ToolbarItem(placement: .primaryAction) {
                            if(viewModel.guessWasMade){
                                HStack{
                                    Spacer()
                                    NavigationLink(destination: ExplanationView(question: viewModel.question, explanation: viewModel.exp)) {
                                        Image(systemName: "checkmark.square.fill")
                                            .resizable()
                                            .scaledToFill()
                                            .foregroundColor(.black)
                                    }
                                }
                            }
                        }
                    }
                
                VStack(alignment: .center){
                    Spacer()
                    VStack{
                        Spacer()
                        Text(viewModel.question)
                            .font(.title3)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .padding()
                        
                        if(viewModel.type == "Calculator"){
                            HStack{
                                Text("Calculator")
                                    .foregroundColor(Color.white)
                            }
                            .padding()
                            .frame(width: 147, height: 37)
                            .border(Color.white.opacity(1.0), width: 4)
                            .cornerRadius(5)
            
                        }
                        if(viewModel.type == "Non-Calculator"){
                            
                            HStack{
                                Text("No Calculator")
                                    .foregroundColor(Color.white)
                            }
                            .padding()
                            .frame(width: 147, height: 37)
                            .border(Color.white.opacity(1.0), width: 4)
                            .cornerRadius(5)
                        }
                        Spacer()
                    }
                    .frame(width: 360.0, height: 270.0)
                    .background(Color.black.opacity(0.3))
                    .cornerRadius(15)
                    Spacer()
                    VStack{
                        ForEach(0..<4) {
                            index in
                            AnswerButton(text: viewModel.possibleAnswers(for: index), index: index) {
                                viewModel.makeGuess(at: index)
                            }
                            .background(viewModel.colorForButtonCheck(at: index))
                            .cornerRadius(7)
                            .disabled(viewModel.guessWasMade)
                        }
                    }
                    .padding()
                    
                    
                    if (viewModel.guessWasMade){
                        Button(action: viewModel.nextQuestion, label: {TextPopupView(text: "Next")})
                    }
                }
            }
            .navigationBarTitle("Practice Questions")
            .background(EndNavigationLink)
        }
        
    }
    
    private var EndNavigationLink: some View{
        NavigationLink(destination: comingSoon(), isActive: .constant(viewModel.gameOver), label: {EmptyView()})
    }
    
}

struct AnswerButton: View{
    let text: String;
    let index: Int;
    let onClick: () -> Void
    var letters:[String] = ["a)", "b)", "c)", "d)"]
    var body: some View{
        Button(action: {
            onClick()
        }) {
            HStack{
                Text(letters[index])
                    .foregroundColor(Color.black)
                    .padding()
                Spacer()
                Text(text)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .padding()
            }
        }
        .frame(width: 250, height: 50)
        .border(Color.black.opacity(1.0), width: 4)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView().environmentObject(gameViewModel())
    }
}

