//
//  WelcomeView.swift
//  SAT App
//
//  Created by Sai Mandhan on 12/23/21.
//

import SwiftUI

struct comingSoon: View {
    var body: some View {
        
        NavigationView{
            ZStack{
                LinearGradient(
                            gradient: Gradient(colors: [Color(red: 102/255, green: 45/255, blue: 145/255),
                                                        Color(red: 0, green: 116/255, blue: 178/255)]),
                            startPoint: .bottomTrailing,
                            endPoint: .topLeading
                        )
                        .ignoresSafeArea()
                
                VStack{
                    Text("More Content Coming Soon!")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                    Text("You have reached the end of our question bank! Our team is constantly adding more questions for you to practice with. Stay tuned!")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding()
                   
                    Spacer()
                    
                }
            }
        }
    }
}

struct comingSoon_Previews: PreviewProvider {
    static var previews: some View {
        comingSoon()
    }
}
