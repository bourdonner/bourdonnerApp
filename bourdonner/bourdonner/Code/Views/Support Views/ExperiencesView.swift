//
//  ExperiencesView.swift
//  bourdonner
//
//  Created by Erick Martins on 29/09/21.
//

import SwiftUI

struct ExperiencesView: View {
    
    var experiences: [Experience]
    @State var showExperiences = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            HStack(spacing: 16) {
                Text("Experiences")
                    .font(Omnes.bold.font(size: 22))
                    .opacity(0.9)
                Button {
                    withAnimation(.easeInOut(duration: 0.35)){
                        showExperiences.toggle()
                    }
                    
                } label : {
                    Image(systemName: "chevron.up.circle.fill")
                        .font(.system(size: 22, weight: .medium))
                        .rotationEffect(self.showExperiences ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
            }.padding(.bottom, 14)
            
            if(showExperiences) {
                ForEach(experiences) { experience in
                    ExperienceView(experience: experience)
                }
            }
        }
    }
}

struct ExperiencesView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            
            ExperiencesView(experiences: AppModel().portfolio.experiences)
                .padding(24)
        }
    }
    
}
