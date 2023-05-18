//
//  ContentView.swift
//  MidExam1
//
//  Created by 강승우 on 2023/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.clear
            VStack(alignment: .center){
                Image("Image")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                
                HStack(alignment: .center){
                    Text("BTS").font(.title).fontWeight(.black)
                    Spacer()
                    VStack{
                        HStack{
                            Image(systemName: "star.fill")
                                .foregroundColor(Color.yellow)
                                .frame(width: 15, height: 15)
                            Image(systemName: "star.fill")
                                .foregroundColor(Color.yellow)
                                .frame(width: 15, height: 15)
                            Image(systemName: "star.fill")
                                .foregroundColor(Color.yellow)
                                .frame(width: 15, height: 15)
                            Image(systemName: "star.fill")
                                .foregroundColor(Color.yellow)
                                .frame(width: 15, height: 15)
                            Image(systemName: "star.leadinghalf.filled")
                                .foregroundColor(Color.yellow)
                                .frame(width: 15, height: 15)
                        }
                        Text("(Reviews 361)").font(.footnote).foregroundColor(Color.yellow)
                    }
                    
                }
                HStack{
                    Text("Sing together with BTS")
                    Spacer()
                }
                
                HStack{
                    Text("<2017112436 강승우>")
                    Spacer()
                    Image(systemName: "fork.knife")
                        .foregroundColor(Color.black)
                        .frame(width: 15, height: 15)
                    Image(systemName: "binoculars.fill")
                        .foregroundColor(Color.black)
                        .frame(width: 15, height: 15)
                }
                Spacer()
            }
            .frame(width:330,height:300)
            .padding([.leading, .bottom], 12)
            .padding([.top, .trailing])
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: Color.primary.opacity(0.2), radius: 10, x: 2, y: 2)
        }
        .background(Color(UIColor.systemYellow))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
