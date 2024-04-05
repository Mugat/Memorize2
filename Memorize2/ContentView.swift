//
//  ContentView.swift
//  Memorize2
//
//  Created by Lucas Oliveira Ferreira on 31/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
            
            
        }
        .foregroundColor(.orange)
        .padding()
        
        
        
    
        
    }
}

struct CardView: View {
    var isFaceUp  = false
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text("🐥").font(.largeTitle)
                
            } else {
                base.fill()
               
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

