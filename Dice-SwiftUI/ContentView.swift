//
//  ContentView.swift
//  Dice-SwiftUI
//
//  Created by bilal on 22/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State var n1: Int = 1
    @State var n2: Int = 1
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(diceNum: n1).padding(.all)
                    DiceView(diceNum: n2).padding(.all)
                }
                .padding(.all)
                Spacer()
                Button {
                    self.n1 = Int.random(in: 1...6)
                    self.n2 = Int.random(in: 1...6)
                } label: {
                    HStack {
                        Image(systemName: "dice.fill")
                        Text("Roll").font(.system(size: 28))
                    }.padding(.all).padding(.horizontal)
                }
                .background(Color(UIColor(red: 0.5, green: 0.7, blue: 0.2, alpha: 1.0)))
                .foregroundColor(.white).cornerRadius(50)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
var diceNum: Int
    var body: some View {
        Image("dice\(diceNum)").resizable().aspectRatio(contentMode: .fit).padding(.all)
    }
}
