//
//  ProjectsView.swift
//  bourdonner
//
//  Created by Erick Martins on 01/10/21.
//

import SwiftUI

struct ProjectsView: View {
    
    //MARK:- variables
    var projects: [Projects]

    @State var showProjects = true

    //MARK:- views

    var body: some View {
        VStack (alignment: .leading) {
            HStack(spacing: 16) {
                Text("Projects")
                    .font(Omnes.bold.font(size: 21))
                    .opacity(0.9)
                    .padding(.leading, 30)
                Button {
                    withAnimation(.easeInOut(duration: 0.35)){
                        showProjects.toggle()
                    }

                } label : {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showProjects ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
                
            }
            if(showProjects) {
                LazyVStack {
                    ForEach(projects) { project in
                        ProjectView(project: project)
//                        SkillView(skill: skill, width: width / 3 - 15)
                    }
                }.padding(.top, 15)
                
            }
        }
    }
}

struct ProjectsView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectsView(projects: AppModel().portfolio.projects)
    }
}
