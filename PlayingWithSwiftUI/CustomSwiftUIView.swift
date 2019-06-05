//
//  CustomSwiftUIView.swift
//  PlayingWithSwiftUI
//
//  Created by Michael Vilabrera on 6/4/19.
//  Copyright © 2019 Michael Vilabrera. All rights reserved.
//

import SwiftUI

struct CustomSwiftUIView : View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 5))
            .shadow(radius: 11)
            .aspectRatio(contentMode: .fit)
    }
}

#if DEBUG
struct CustomSwiftUIView_Previews : PreviewProvider {
    static var previews: some View {
        CustomSwiftUIView()
    }
}
#endif
