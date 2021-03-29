//
//  ContentView.swift
//  AdriaanCard
//
//  Created by Adriaan van Schalkwyk on 2021/02/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.20, green: 0.29, blue: 0.37)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Adriaan")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .center)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 2)
                    )
                Text("Adriaan\nvan Schalkwyk")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white).multilineTextAlignment(.center)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+12 34 567 890", imageName: "phone.fill")
                InfoView(text: "test9@test.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
