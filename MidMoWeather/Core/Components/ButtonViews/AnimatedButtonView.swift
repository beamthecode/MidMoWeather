//
//  AnimatedButtonView.swift
//  MidMoWeather
//
//  Created by Brent Beamer on 11/1/24.
//

import SwiftUI

struct AnimatedButtonView: View {
    
    @Binding var animate: Bool
    
    var body: some View {
        Capsule()
            .stroke(lineWidth: 5.0)
            .scale(animate ? 1.0 : 0.0)
            .opacity(animate ? 0.0 : 1.0)
            .animation(.easeInOut(duration: 1.0), value: animate)
           
           
    }
}

#Preview {
    AnimatedButtonView(animate: .constant(false))
        .foregroundStyle(.red)
        .frame(width: 70, height: 40)
}
