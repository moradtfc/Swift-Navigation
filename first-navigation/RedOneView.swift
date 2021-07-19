//
//  ContentView.swift
//  first-navigation
//
//  Created by Data on 24/04/21.
//

import SwiftUI

struct RedOneView: View {
    var body: some View {
        NavigationView{
            
            VStack{
                CircleNumberView(color: .red, number: 1)
                    .navigationTitle("Red One")
                    .offset(y:-60)
                NavigationLink(
                    destination: BlueOneView(color: .orange),
                    label: {
                        Text("Next Screen")
                            .font(.body)
                            .fontWeight(.bold)
                            .foregroundColor(Color.purple)
                            .frame(width: 200.0, height: 50.0)
                            .background(Color.black)
                            
                    })
            }
        }
        .accentColor(Color(.label))
    }
}

struct BlueOneView: View {
    
    var color: Color
    
    var body: some View {
            VStack{
                CircleNumberView(color: color, number: 2)
                    .navigationTitle("Blue One")
                    .offset(y:-60)
                NavigationLink(
                    destination: ThreeOneView(),
                    label: {
                        Text("Next Screen")
                            .font(.body)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .frame(width: 200.0, height: 50.0)
                            .background(Color.blue)
                            
                    })
            }
        
    }
}

struct ThreeOneView: View {

    
    var body: some View {
            VStack{
                CircleNumberView(color: .green, number: 3)
                    .navigationTitle("Three One")
                    .offset(y:-60)
            }
    }
}

struct CircleNumberView: View {
    
    var color: Color
    var number: Int
    
    var body: some View{
        ZStack {
            Circle()
                .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(color)
            Text("\(number)")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .bold))
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RedOneView()
            
            
    }
}
