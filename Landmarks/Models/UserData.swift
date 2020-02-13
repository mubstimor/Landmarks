//
//  UserData.swift
//  Landmarks
//
//  Created by Timothy Mubiru on 2/13/20.
//  Copyright © 2020 Timothy Mubiru. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
