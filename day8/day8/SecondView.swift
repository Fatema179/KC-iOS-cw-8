//
//  SecondView.swift
//  day8
//
//  Created by Zeinab H Eldeeb on 23/08/2022.
//

import SwiftUI

struct SecondView: View {
    let myC : Color
    let myS : String
    var body: some View {
        ZStack{
            myC.ignoresSafeArea()
            
            VStack{
                Text(myS)
            }
            
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(myC: Color.blue, myS: "hi")
    }
}
