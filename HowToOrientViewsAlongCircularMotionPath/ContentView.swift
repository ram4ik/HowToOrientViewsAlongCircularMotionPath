//
//  ContentView.swift
//  HowToOrientViewsAlongCircularMotionPath
//
//  Created by ramil on 21/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var moveOnCircularPath = false
    
    var body: some View {
        ZStack {
            Circle()
                .stroke()
                .frame(width: 300, height: 300)
                .foregroundColor(.orange)
            
            Image(systemName: "airplane")
                .font(.largeTitle)
                .foregroundColor(.blue)
                .offset(y: -150)
                .rotationEffect(.degrees(moveOnCircularPath ? 0 : -360))
                .animation(Animation.linear(duration: 5) .repeatForever(autoreverses: false))
                .onAppear() {
                    self.moveOnCircularPath.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
