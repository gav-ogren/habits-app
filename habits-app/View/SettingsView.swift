//
//  SettingsView.swift
//  habits-app
//
//  Created by Gavin  Ogren on 7/21/25.
//

import SwiftUI


struct SettingsView: View {
    var body: some View{
        HStack{
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Text("myTargets")
                .font(.headline)

            Spacer()
            Spacer()

            Button(action: { print("Menu button tapped") }) {
                Image(systemName: "line.3.horizontal.decrease.circle.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(.orange)
            }
            Spacer()}
            
        ZStack{
        
            Color.cyan.ignoresSafeArea()
            VStack{
                Button(action: { print("User button tapped") }) {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 140, height: 140)
                        .foregroundColor(.blue)
                }
                Text("Hello Wolrd")
                Text("Prenium Member")
                
            }
           
            
        }
        
        
        ScrollView{
            
            VStack{
                Text("Hello Wolrd")
                
            }
            Spacer()
            VStack{
                Text("Wolrd")
            }
        }
    }
}
#Preview {
    SettingsView()
}
