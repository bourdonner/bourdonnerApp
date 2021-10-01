//
//  SkillView.swift
//  bourdonner
//
//  Created by Erick Martins on 29/09/21.
//

import SwiftUI

struct SkillView: View {
    
    //MARK:- variables
    var skill: Skill
    var width: CGFloat = 120
    //MARK:- views
    
    var body: some View {
        
        VStack{
            Image(systemName: skill.image)
                .font(.system(size: 30, weight: .semibold))
                .opacity(1)
            
            Spacer()
            Text(skill.skillName)
                .font(Omnes.regular.font(size: 12))
                .multilineTextAlignment(.center)
                .lineLimit(nil)
                .opacity(1)
            
            
        }.padding()
            .frame(width: width, height: 110)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(Color("background"))
                    .blendMode(.multiply)
                    .opacity(0.5))
    }
    
    
    
}


struct SkillView_Previews: PreviewProvider {
    static var previews: some View {
        SkillView(skill: AppModel().portfolio.skills[0])
    }
}
