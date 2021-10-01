//
//  ProjectView.swift
//  bourdonner
//
//  Created by Erick Martins on 01/10/21.
//

import SwiftUI

struct ProjectsListView: View {

    @ObservedObject private var viewModel = AppModel()
    
    @State var showProjects = true
    
    @State var projectListFilter: ProjectType
    

    //MARK:- views

    var body: some View {
        VStack (alignment: .leading) {

            if(showProjects) {
                LazyVStack {
                    ForEach(viewModel.portfolio.projects) { project in
                        if project.type == projectListFilter{
                            ProjectCellView(project: project)
                        }


                    }
                }.padding(.top, 15)
            }
        }
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
                            .font(Omnes.bold.font(size: 16))
                            .multilineTextAlignment(.center)
                            .lineLimit(nil)
                            .opacity(1)
                            .padding(.bottom, 15)
                            .padding(.top, 10)

                        
                    }
//                    .padding()
                
            })
                .frame(maxWidth: .infinity, maxHeight: 250)

                .background(Color("background"))
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
