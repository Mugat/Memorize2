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
            CardView()
            CardView(isFaceUp: true )
            CardView()
            CardView()
            
            
        }
        .foregroundColor(.orange)
        .padding()
    
        
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(Color.orange, lineWidth: 2)
                    .background(Color.white)
                    .frame(width: (80), height: 120)
                
                
                Text(  "🐸" )
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                    .imageScale(.small)
                
            } else {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.red)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

