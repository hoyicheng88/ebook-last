//
//  intro.swift
//  ebook
//
//  Created by User18 on 2020/10/19.
//

import SwiftUI

struct intro: View {
    @State private var rotateDegree: Double = 0
    let Film: film
    
    var body: some View {
        ScrollView{
            VStack {
                Image(Film.name)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 430.0)
                    .clipped()
                    .rotationEffect(.degrees(rotateDegree))
                    .animation(
                        Animation.linear(duration: 2)
                        
                    )
                    .onAppear {
                        rotateDegree = 360
                    }
                    .transition(/*@START_MENU_TOKEN@*/.scale/*@END_MENU_TOKEN@*/)
                
                Text(Film.information)
                    .multilineTextAlignment(.leading)
                    .font(.custom("jf-openhuninn-1.1", size: 22))
                    .padding()
                Spacer()
                Link("資料來源：維基百科", destination:URL(string: Film.url)!)
                    .padding(.leading, 200.0)
                    .foregroundColor(Color("bllue"))
                    .font(.custom("jf-openhuninn-1.1", size: 15))
            }
            .navigationBarTitle(Film.name)
        }.foregroundColor(.gray)
    }
}
struct intro_Previews: PreviewProvider {
    static var previews: some View {
        intro(Film: movie[0])
    }
}
