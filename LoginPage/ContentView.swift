//
//  ContentView.swift
//  LoginPage
//
//  Created by VIKAS SINGH on 20/08/20.
//  Copyright © 2020 VIKAS SINGH. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var userName = ""
    @State private var password = ""
    var body: some View {
        VStack{
            AppName()
            Applogo()
            AppDetail()
            
            TextField("Enter Username.", text: $userName)
                
                .padding(.horizontal,30).padding(.top, 30)
            Divider().padding(.horizontal, 20)
            
                TextField("Enter Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
                
            
            Button(action: {
                print("Button Tapped")
            }) {
                Text("LOGIN ").bold()
                    .padding(20)
                Image(systemName: "car")
            }
            .frame(width:200, height: 32, alignment: .center)
            .foregroundColor(.white)
            .padding(.all)
            .background(Color.black)
            .cornerRadius(12)
            
        }
    }
}


fileprivate func AppName()-> some View{
    return
        Text("Trucky Ducky")
            .font(.largeTitle)
            .bold()
    
}


fileprivate func Applogo()-> some View{
    return Image("Trucks")
        .resizable()
        .frame(width: 150, height: 150, alignment: .center)
        .clipShape(Circle())
        .padding(.all, 30)
    
    
}

fileprivate func AppDetail()-> some View{
    return Text("Enter your login details")
        .foregroundColor(.gray)
        .font(.headline)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
