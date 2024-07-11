//
//  ToolView.swift
//  SAT App
//
//  Created by Sai Mandhan on 1/26/22.
//

import SwiftUI

struct ToolView: View {
    var body: some View {
        NavigationView{
            ZStack{
                LinearGradient(
                            gradient: Gradient(colors: [Color(red: 102/255, green: 45/255, blue: 145/255),
                                                        Color(red: 0, green: 116/255, blue: 178/255)]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                        .ignoresSafeArea()
              
                    VStack{
                        HStack{
                            Image(systemName: "person")
                                .foregroundColor(Color.white)
                                .padding()
                            Spacer()
                            Text("The Practice Tab allows you to practice from over 100+ questions!")
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .padding()
                        }
                        HStack{
                            Image(systemName: "book")
                                .foregroundColor(Color.white)
                                .padding()
                            Spacer()
                            Text("The Learn Tab focuses your learning on specific tested topics!")
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .padding()
                        }
                        HStack{
                            Image(systemName: "folder")
                                .foregroundColor(Color.white)
                                .padding()
                            Spacer()
                            Text("The Reports Tab gives you analytics about your performance!")
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .padding()
                        }
                        HStack{
                            Image(systemName: "candybarphone")
                                .foregroundColor(Color.white)
                                .padding()
                            Spacer()
                            Text("The built-in calculator tool allows you to solve calculator problems!")
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .padding()
                        }
                        HStack{
                            Image(systemName: "checkmark.square.fill")
                                .foregroundColor(Color.white)
                                .padding()
                            Spacer()
                            Text("The Explanation Tab will allow you to view why an answer is correct!")
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .padding()
                        }
                        
                    }
                    .frame(width: 360.0, height: 525.0)
                    .background(Color.black.opacity(0.5))
                    .cornerRadius(15)
                    
            }
            .navigationBarTitle("App Resources")
        }
    }
}

struct ToolView_Previews: PreviewProvider {
    static var previews: some View {
        ToolView()
    }
}
