//
//  ContentView.swift
//  habits-app
//
//  Created by Gavin  Ogren on 6/26/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack{
                Spacer()
                
                Button(action: {print("User button tapped")})
                {
                    Image(systemName: "person.circle.fill").resizable().frame(width: 35, height: 35).foregroundColor(.blue)
                    
                }.buttonStyle(PlainButtonStyle())
                Spacer()
                Spacer()
                Text("myTargets")
                Spacer()
                Spacer()
                Button(action: {print("User button tapped")})
                {
                    Image(systemName: "line.3.horizontal.decrease.circle.fill").resizable()
                        .frame(width: 25, height: 25).foregroundColor(.orange)
                }
                Spacer()
            }
            Spacer()
            HStack{
            }
            Spacer()
            HStack{}
            Spacer()
        }
    }
}


#Preview {
    ContentView()
}
