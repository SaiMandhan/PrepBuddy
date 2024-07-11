//
//  Popup.swift
//  SAT App
//
//  Created by Sai Mandhan on 12/13/21.
//

import SwiftUI

struct TextPopupView: View {
    let text: String
    
    var body: some View {
        
        HStack{
            Spacer()
            Text(text)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .padding()
            Spacer()
        }
        .background(Color.black.opacity(1.0))
        .cornerRadius(15)
        .padding()
        
        
    }
}

struct Popup_Previews: PreviewProvider {
    static var previews: some View {
        TextPopupView(text: "Yo")
    }
}
