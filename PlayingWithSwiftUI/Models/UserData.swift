//
//  UserData.swift
//  PlayingWithSwiftUI
//
//  Created by Michael Vilabrera on 6/10/19.
//  Copyright © 2019 Michael Vilabrera. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: BindableObject {
    let didChange = PassthroughSubject<UserData, Never>()
    
    var showFavoritesOnly = false {
        didSet {
            didChange.send(self)
        }
    }
    var landmarks = landmarkData {
        didSet {
            didChange.send(self)
        }
    }
}
