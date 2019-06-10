//
//  LandmarkRow.swift
//  PlayingWithSwiftUI
//
//  Created by Michael Vilabrera on 6/10/19.
//  Copyright © 2019 Michael Vilabrera. All rights reserved.
//

import SwiftUI

struct LandmarkRow : View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image(forSize: 50)
            Text(landmark.name)
        }
    }
}

#if DEBUG
struct LandmarkRow_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarkData[0])
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
#endif
