//
//  ContentView.swift
//  PlayingWithSwiftUI
//
//  Created by Michael Vilabrera on 6/4/19.
//  Copyright © 2019 Michael Vilabrera. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            CustomSwiftUIView()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .trailing) {
                Text("Lets Do This")
                    .font(.largeTitle)
                    .color(Color.orange)
                HStack(alignment: .top) {
                    Text("Right Right Now!")
                        .font(.subheadline)
                    Spacer()
                    Text("For Real")
                        .font(.subheadline)
                    }
                    .padding()
                }
                .padding()
            
                Spacer()
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
