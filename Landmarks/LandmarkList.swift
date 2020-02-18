//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Timothy Mubiru on 2/13/20.
//  Copyright © 2020 Timothy Mubiru. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
  
        List {
            Toggle(isOn: $userData.showFavoritesOnly) {
                Text("Favorites Only")
            }
            
            ForEach(userData.landmarks) { landmark in
                if !self.userData.showFavoritesOnly || landmark.isFavorite {
                    NavigationLink(
                        destination: LandmarkDetail(landmark: landmark)
                            .environmentObject(self.userData)
                    ) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
        }
        .navigationBarTitle(Text("Landmarks"))

    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView { 
            LandmarkList()
                .environmentObject(UserData())
        }
    }
}
