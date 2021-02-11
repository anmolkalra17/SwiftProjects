//
//  AnimationView.swift
//  SwiftUILottie
//
//  Created by Anmol Kalra on 11/02/21.
//

import SwiftUI
import Lottie

struct LottieAnimationView: UIViewRepresentable {
    
    @Binding var animationTrue: Bool
    
    func makeUIView(context: Context) -> some AnimationView {
        let lottieAnimation = AnimationView(name: "like")
        lottieAnimation.play { (complete) in
            if complete{
                animationTrue = false
            }
        }
        return lottieAnimation
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
