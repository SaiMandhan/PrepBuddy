//
//  YoutubeFramework.swift
//  SAT App
//
//  Created by Sai Mandhan on 12/26/21.
//

import SwiftUI
import WebKit

struct VideoView: UIViewRepresentable{
    let videoID: String

    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoID)") else{return}
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: youtubeURL))
    }
}
