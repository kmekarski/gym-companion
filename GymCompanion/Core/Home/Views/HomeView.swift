//
//  TabView.swift
//  GymCompanion
//
//  Created by Klaudiusz Mękarski on 18/07/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            Text("View 1")
                .tabItem {
                    Image(systemName: "dumbbell")
                    Text("Workout plans")
                }
            Text("View 2")
                .tabItem {
                    Image(systemName: "hourglass")
                    Text("Workout history")
                }
            Text("View 3")
                .tabItem {
                    Image(systemName: "flag.checkered")
                    Text("My goals")
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
