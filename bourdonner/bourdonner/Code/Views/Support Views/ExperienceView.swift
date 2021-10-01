//
//  ExperienceView.swift
//  bourdonner
//
//  Created by Erick Martins on 29/09/21.
//

import SwiftUI

struct ExperienceView: View {
    
    var experience: Experience
    var body: some View {
        VStack(alignment: .leading){
            Circle()
                .frame(width: 10, height: 10 , alignment: .center)
            
            HStack {
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 3)
                    .padding(.leading, 3)
                
                VStack(alignment: .leading) {
                    Text(experience.role)
                        .font(Omnes.bold.font(size: 18.5))
                        .foregroundColor(Color("yellow"))
                    
                    Text(experience.companyName)
                        .font(Omnes.regular.font(size: 16.5))
                        .opacity(0.75)
                        .padding(.top, 4)
                    
                    Text(experience.duration)
                        .font(Omnes.regular.font(size: 13.5))
                        .opacity(0.45)
                        .padding(.top, 14)
                    
                }.padding(.leading, 16)
            }.padding(.top, 8)
        }.fixedSize()
    }
}

struct ExperienceView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            ExperienceView(experience: AppModel().portfolio.experiences[0])
                .padding(24)
        }
    }
}
