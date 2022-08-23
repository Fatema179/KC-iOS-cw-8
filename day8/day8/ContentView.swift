//
//  ContentView.swift
//  day8
//
//  Created by Zeinab H Eldeeb on 21/08/2022.
//

import SwiftUI

struct ContentView: View {
    let colors = [Color.green, Color.orange, Color.blue, Color.red]
    @State var myNote = ""
    @State var Selected: Color = Color.indigo
    var body: some View {
        NavigationView{
            ZStack{
                Color.gray
                    .ignoresSafeArea()
                VStack{
                    Spacer()
                    Text("🎨choose your color🎨")
                        .font(.system(size:35))
                    HStack {
                        ForEach(colors, id:\.self){
                            color in
                            
                            Circle()
                                .fill(color)
                                .frame(width: 90, height: 90)
                                .onTapGesture {
                                    Selected = color
                                }
                        }
                    }.padding()
                    Text("✍🏼what are you thinking of?✍🏼")
                        .font(.system(size: 25))
                    
                    TextField("write here..", text: $myNote)
                        .textFieldStyle(.roundedBorder)
                        .background(.white)
                        .padding()
                    
                    Spacer()
                    NavigationLink(destination: SecondView(myC: Selected, myS: myNote)) {
                        Text("save")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .frame(width: 200, height: 50)
                            .background(.green)
                            .cornerRadius(20)


                    }
                }
            }
            .navigationTitle("My Diary📚")
        }.accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}
