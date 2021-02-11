//
//  ContentView.swift
//  SwiftUILottie
//
//  Created by Anmol Kalra on 11/02/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var animationTrue = false
    
    var body: some View {
        VStack{
            Text("iPhone 12 Pro")
                .bold()
                .font(.title)
            
            Image("iPhone 12 Pro")
                .resizable()
                .frame(width: 300, height: 400, alignment: .center)
                .cornerRadius(8.0)
            
            if animationTrue{
                LottieAnimationView(animationTrue: $animationTrue)
            }
            
            Spacer()
            Button("Like this") {
                animationTrue.toggle()
            }
            .frame(width: 100, height: 50, alignment: .center)
            .background(Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)))
            .foregroundColor(.white)
            .cornerRadius(8.0)
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
