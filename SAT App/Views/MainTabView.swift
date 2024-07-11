//
//  MainTabView.swift
//  SAT App
//
//  Created by Sai Mandhan on 12/13/21.
//

import SwiftUI

struct MainTabView: View {
    @EnvironmentObject var object: gameViewModel
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor(.white)
    }
    
    var body: some View {
        TabView{
            QuestionView()
                .tabItem{Label("Practice",systemImage:"person")}
                .environmentObject(object)
            LearnList()
                .tabItem{Label("Learn",systemImage:"book")}
            ReportView(viewModel: ReportViewModel(selection: (object.selectionCountt)))
                .tabItem{Label("Progress",systemImage: "folder")}
            
            ToolView()
                .tabItem{Label("Resources", systemImage: "gear")}
            
            
        }
        .accentColor(.blue)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainTabView().environmentObject(gameViewModel())
            MainTabView().environmentObject(gameViewModel())
        }
    }
}
