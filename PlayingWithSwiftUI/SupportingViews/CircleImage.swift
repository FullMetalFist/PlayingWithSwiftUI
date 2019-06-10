//
//  CircleImage.swift
//  PlayingWithSwiftUI
//
//  Created by Michael Vilabrera on 6/4/19.
//  Copyright © 2019 Michael Vilabrera. All rights reserved.
//

import SwiftUI

struct CircleImage : View {
    var image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 5))
            .shadow(radius: 11)
            .aspectRatio(contentMode: .fit)
    }
}

#if DEBUG
struct CircleView_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
#endif
