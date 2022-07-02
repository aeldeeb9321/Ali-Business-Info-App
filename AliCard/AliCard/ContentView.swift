//
//  ContentView.swift
//  AliCard
//
//  Created by Ali Eldeeb on 6/29/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.33, green: 0.94, blue: 0.77)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("AliImage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                //layers a second view on top of the existing view, .stroke makes the shape lined instead of filled
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Ali Eldeeb")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                Text("Junior IOS Developer")
                    .foregroundColor(Color.white)
                    .font(.system(size: 22))
                    .italic()
                Divider()
                InfoView(text: "+1(415)872-2158", imageName: "phone.fill")
                InfoView(text: "aeldeeb@fordham.edu", imageName: "envelope.fill")
                Image("qrCode")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .overlay(Rectangle().stroke(Color.white, lineWidth: 8))
                    
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


