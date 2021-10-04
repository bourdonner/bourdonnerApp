//
//  ProjectView.swift
//  bourdonner
//
//  Created by Erick Martins on 01/10/21.
//

import SwiftUI

struct ProjectsListView: View {
    
    @ObservedObject private var viewModel = AppModel()
    
    
    @State var projectListFilter: ProjectType
    
    
    //MARK:- views
    
    var body: some View {
        ZStack {
//            Color("background")
//                .ignoresSafeArea()
                
                    LazyVStack {
                        ForEach(viewModel.portfolio.projects) { project in
                            if project.type == projectListFilter{
                                ProjectCellView(project: project)
                            }

                    }.padding(.top, 15)
   
            }
        }//.frame(maxWidth: .infinity)
      //      .background(Color("background"))

    }
}




struct ProjectCellView: View {
    
    @StateObject var project: Projects
    
    var body: some View {
        Button(action: {
            UIApplication.shared.open(URL(string: project.link)!)
            
        }, label: {
            
            VStack{
                Image(project.projectImage)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(12)
                
                //                        Spacer()
                
                Text(project.projectName)
                    .font(Omnes.regular.font(size: 20))
                    .foregroundColor(Color("backgroundInvert"))
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    .padding(.bottom, 20)
                    .padding(.top, 10)
                
                
            }

        })
            .frame(maxWidth: .infinity, maxHeight: 250)
            .background(Color("almostPure"))
            .cornerRadius(12)
            .padding([.trailing, .leading], 30)
            
        
        
    }
}



//struct ProjectView_Previews: PreviewProvider {
//    static var previews: some View {
//        GeometryReader { proxy in
//            ProjectCellView(project: AppModel().portfolio.projects[0])
//                .padding(24)
//        }
//
//    }
//}

//struct ProjectsView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProjectsListView(projects: AppModel().portfolio.projects)
//    }
//}
