//
//  LandmarkDetail.swift
//  PlayingWithSwiftUI
//
//  Created by Michael Vilabrera on 6/4/19.
//  Copyright © 2019 Michael Vilabrera. All rights reserved.
//

import SwiftUI

struct LandmarkDetail : View {
    var landmark: Landmark
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            CircleImage(image: landmark.image(forSize: 250))
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
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
                }
                .padding()
            
                Spacer()
        }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

#if DEBUG
struct LandmarkDetail_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
#endif