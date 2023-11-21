//
//  ExcerciseSectionHeaderView.swift
//  GymCompanion
//
//  Created by Klaudiusz Mękarski on 20/07/2023.
//

import SwiftUI

struct ExcerciseSectionHeaderView: View {
    
    @Binding var excercises: [WorkoutExercise]
    var index: Int
    
    var body: some View {
        HStack {
            Text("Excercise \(index + 1)")
            Spacer()
            if excercises.count > 1 {
                Image(systemName: "xmark")
                    .font(.headline)
                    .onTapGesture {
                        excercises.remove(at: index)
                    }
            }
        }
    }
}

struct ExcerciseSectionHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ExcerciseSectionHeaderView(excercises: .constant(dev.excercises), index: 0)
    }
}
