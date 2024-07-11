//
//  SAT_AppApp.swift
//  SAT App
//
//  Created by Sai Mandhan on 12/13/21.
//

import SwiftUI

@main
struct SAT_AppApp: App {
    @StateObject var viewModel = gameViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainTabView().environmentObject(viewModel)
        }
    }
}
