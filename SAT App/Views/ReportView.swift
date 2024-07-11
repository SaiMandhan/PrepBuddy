//
//  ReportView.swift
//  SAT App
//
//  Created by Sai Mandhan on 12/31/21.
//

import SwiftUI

struct ReportView: View {
    let viewModel: ReportViewModel
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [Color(red: 102/255, green: 45/255, blue: 145/255),
                                                Color(red: 0, green: 116/255, blue: 178/255)]),
                    startPoint: .bottomTrailing,
                    endPoint: .topLeading
                )
                .ignoresSafeArea()

                VStack(spacing: 20) {
                    VStack {
                        Text("Total Questions Answered")
                            .font(.title2)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .padding()
                        
                        Text(viewModel.questionsAnswered)
                            .foregroundColor(.white)
                            .font(.title)
                            .padding()
                    }
                    .frame(maxWidth: .infinity)
                    .background(Color.black.opacity(0.3))
                    .cornerRadius(15)
                    
                    VStack(spacing: 10) {
                        Text("Performance Statistics")
                            .font(.title2)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .padding()
                        
                        HStack {
                            Spacer()
                            
                            VStack {
                                Image(systemName: "checkmark.circle.fill")
                                    .font(.system(size: 40))
                                    .foregroundColor(.green)
                                
                                Text(viewModel.questionsCorrect)
                                    .foregroundColor(.white)
                                    .font(.title2)
                                    .padding()
                            }
                            
                            Spacer()
                            
                            VStack {
                                Image(systemName: "xmark.circle.fill")
                                    .font(.system(size: 40))
                                    .foregroundColor(.red)
                                
                                Text(viewModel.questionsInccorect)
                                    .foregroundColor(.white)
                                    .font(.title2)
                                    .padding()
                            }
                            
                            Spacer()
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .background(Color.black.opacity(0.3))
                    .cornerRadius(15)
                    
                    VStack {
                        Text("Accuracy")
                            .font(.title2)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .padding()
                        
                        Text(viewModel.Percent + "%")
                            .foregroundColor(.white)
                            .font(.title2)
                            .padding()
                        
                        ProgressView(value: viewModel.progressText)
                            .progressViewStyle(LinearProgressViewStyle(tint: .white))
                            .padding()
                    }
                    .frame(maxWidth: .infinity)
                    .background(Color.black.opacity(0.3))
                    .cornerRadius(15)
                }
                .padding()
            }
            .navigationBarTitle("My Progress Report")
        }
    }
}


struct ReportView_Previews: PreviewProvider {
    static var previews: some View {
        ReportView(viewModel: ReportViewModel(selection: (1,3)))
    }
}
