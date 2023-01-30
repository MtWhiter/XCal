//  Homepage.swift
//  XCal
//
//  Created by Sirilux  oksuk on 29/1/2566 BE.
//

import Foundation
import SwiftUI

struct Homepage: View {
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                                        
                    WelcomeMainText()
                    WelcomeSubText()
                    
                    Image("Profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.green, lineWidth: 4))
                    Text("MEAL FOR TODAY")
                        .offset(x: -105)
                    
                    Picture_Option()
                    
                    ExtraPopup()
                    Spacer()
                  }
                }
            }
        }
    }



struct Homepage_Preview: PreviewProvider {
    static var previews: some View {
        Homepage()
    }
}


struct WelcomeMainText: View {
    var body: some View {
        HStack{
            Text("Tuesday, 31 January")
                .font(.headline)
                .padding(.horizontal)
                .offset(y: 15)
        }
    }
}

struct WelcomeSubText: View {
    var body: some View {
        HStack{
            Text("Hello, user!")
                .font(.largeTitle)
                .padding(.horizontal)
                .offset(y: 10)
        }
    }
}

struct FactorProtein: View {
    var body: some View {
        HStack{
            Spacer()
                .frame(width: 150)
            Text("PROTEIN")
                .padding(.horizontal)
                .offset(x: 19, y:70)
            Rectangle()
                .frame(width: 100, height: 20)
                .cornerRadius(10)
                .offset(x: 6, y: 70)
        }
    }
}

struct Picture_Option: View {
    var body: some View {
        HStack{
            Spacer(minLength: 200)
            VStack{
                Image("Salmon")
    
                    .frame(width: 200, height: 150)
                    .cornerRadius(40)
                Rectangle()
                    .foregroundColor(.white)
                    .shadow(radius: 10)
                    .frame(width: 200, height: 100)
                    .offset(y:-20)
                    .overlay(Text("Salmon is a healthy food option as it is a rich source of omega-3 fatty acids, which can help reduce the risk of heart disease and improve brain function.").font(.footnote).offset(x:2, y:-20))
            }
            
            VStack{
                Rectangle()
                    .frame(width: 200, height: 150)
                    .cornerRadius(40)
                Rectangle()
                    .foregroundColor(.white)
                    .shadow(radius: 10)
                    .frame(width: 200, height: 100)
                    .offset(y:-20)
            }
            Spacer()
                .frame(width: 200)
        }
    }
}

struct ExtraPopup: View {
    var body: some View {
        VStack{
            Rectangle()
                .foregroundColor(.black)
                .frame(width: 370, height: 210)
                .cornerRadius(40)
        }
    }
}
