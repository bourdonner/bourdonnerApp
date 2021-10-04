//
//  SkillsView.swift
//  bourdonner
//
//  Created by Erick Martins on 29/09/21.
//

import SwiftUI

struct SkillsView: View {
    
    //MARK:- variables
    var skills: [Skill]
    var width: CGFloat
    @State var showSkills = false

    //MARK:- views

    var body: some View {
        VStack (alignment: .leading) {
            HStack(spacing: 16) {
                Text("Skills")
                    .font(Omnes.bold.font(size: 22))
                    .opacity(0.9)
                Button {
                    withAnimation(.easeInOut(duration: 0.35)){
                        showSkills.toggle()
                    }

                } label : {
                    Image(systemName: "chevron.up.circle.fill")
                        .font(.system(size: 22, weight: .medium))
                        .rotationEffect(self.showSkills ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
                
            }
            if(showSkills) {
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()], alignment: .leading, spacing: 12) {
                    ForEach(skills) { skill in
                        SkillLink(skill: skill, width: width / 3 - 15)
//                        SkillView(skill: skill, width: width / 3 - 15)
                    }
                }.padding(.top, 14)
            }
        }
    }
}

struct SkillsView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            SkillsView(skills: AppModel().portfolio.skills, width: 400)
        }
    }
}
