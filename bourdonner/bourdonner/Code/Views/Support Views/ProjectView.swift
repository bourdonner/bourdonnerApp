//
//  ProjectView.swift
//  bourdonner
//
//  Created by Erick Martins on 01/10/21.
//

import SwiftUI

struct ProjectView: View {
    
    var project: Projects
    var width: CGFloat   = 250
           
        var body: some View {
            Button(action: {
                print (project.link)
                
//      onOpenURL(perform: url in
//      print(project.link))
                
            }, label: {
                VStack{
                    Image(systemName: project.projectImage)
                        .font(.system(size: 60, weight: .semibold))
                        .opacity(1)
                    
                    Spacer()
                    Text(project.projectName)
                        .font(Omnes.regular.font(size: 12))
                        .multilineTextAlignment(.center)
                        .lineLimit(nil)
                        .opacity(1)

                    
                }.padding()
                    .frame(width: width, height: 150)
                    .background(
                    RoundedRectangle(cornerRadius: 12)
                        .foregroundColor(Color("background")
                                        )
                        .blendMode(.multiply)
                        .opacity(0.5))
            })
               
            
        }
    }



struct ProjectView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            ProjectView(project: AppModel().portfolio.projects[0])
                .padding(24)
        }

    }
}
