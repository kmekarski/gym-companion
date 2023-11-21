//
//  PlansView.swift
//  GymCompanion
//
//  Created by Klaudiusz Mękarski on 18/07/2023.
//

import SwiftUI

struct PlansView: View {
    
    
    @EnvironmentObject private var vm: PlansViewModel
    
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color.theme.background.ignoresSafeArea()
                ScrollView {
                        header
                        featuredWorkout
                        secondaryHeader(text: "Your own plans")
                        
                        ScrollView(.horizontal) {
                            HStack(spacing: 24) {
                                SmallWorkoutCardView()
                                SmallWorkoutCardView()
                            }
                            .padding(.horizontal)
                            .padding(.vertical, 10)
                        }
                        .offset(y: -15)
                        .padding(.bottom, -15)

                        
                        secondaryHeader(text: "Build muscle mass")


                        ScrollView(.horizontal) {
                            HStack(spacing: 24) {
                                SmallWorkoutCardView()
                                SmallWorkoutCardView()
                            }
                            .padding(.horizontal)
                            .padding(.vertical, 10)
                        }
                        .offset(y: -15)
                        .padding(.bottom, -15)
                }
            }
        }
    }
}

struct PlansView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            PlansView()
                .environmentObject(dev.plansVM)
        }
    }
}

extension PlansView {
    
    private var header: some View {
        VStack {
            HStack {
                Text("Choose a workout plan")
                    .font(.title)
                    .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                HStack(spacing: 20) {
                    NavigationLink {
                        AddPlanView()
                    } label: {
                        CircleButtonView(iconName: "plus")
                    }
                    CircleButtonView(iconName: "info")

                }
                .frame(alignment: .trailing)
            }
            Text("based on your goal")
                .font(.headline)
                .fontWeight(.regular)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            
            
        }
        .frame(maxWidth: .infinity)
        .padding()

    }
    
    private func secondaryHeader(text: String) -> some View {
        Text(text)
            .font(.title)
            .fontWeight(.semibold)
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
    
    
    
    private var featuredWorkout: some View {
        ZStack(alignment: .bottomLeading){
            Color.theme.accent
            VStack(alignment: .leading, spacing: 10) {
                Text("3 days")
                    .bold()
                    .foregroundColor(Color.black)
                    .padding(8)
                    .background(Color.theme.secondaryAccent)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.3), radius: 3)

                Text("Your recent workout")
                    .bold()
                    .foregroundColor(Color.white)
                    .padding(8)
                    .background(Color.theme.special)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.3), radius: 3)

                Text("Intermediate Full-body Workout")
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                    .font(.title)
                    .bold()
                    .foregroundColor(Color.white)
                    .frame(height: 75)
                    .shadow(color: Color.black.opacity(0.4), radius: 3, y: 3)
                HStack(spacing: 20) {
                    HStack(spacing: 5) {
                        Image(systemName: "dumbbell")
                        Text("Strength")
                    }
                    
                    HStack(spacing: 5) {
                        Image(systemName: "figure.run")
                        Text("Cardio")
                    }
                }
                .fontWeight(.bold)
                .foregroundColor(Color.theme.lightGray)
                .shadow(radius: 1, y: 1)
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: 250)
        .cornerRadius(20)
        .padding(.horizontal)
        .shadow(color: Color.black.opacity(0.25), radius: 5, y: 3)
    }
    
}
