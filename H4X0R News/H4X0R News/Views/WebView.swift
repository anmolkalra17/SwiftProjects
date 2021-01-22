//
//  WebView.swift
//  H4X0R News
//
//  Created by Anmol Kalra on 06/01/21.
//

import Foundation
import WebKit
import SwiftUI


struct WebView: UIViewRepresentable {
    let URLString: String?
    
    func makeUIView(context: Context) -> WKWebView{
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = URLString {
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
