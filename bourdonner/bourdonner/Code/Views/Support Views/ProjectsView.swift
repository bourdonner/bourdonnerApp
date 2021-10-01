
////
////  ProjectsView.swift
////  bourdonner
////
////  Created by Erick Martins on 01/10/21.
////
import SwiftUI
struct ProjectsView : View{
    @State var type: ProjectType
    
    var body: some View{
        VStack{
     
            Text(type.rawValue)
                    .font(Omnes.bold.font(size: 21))
                    .opacity(1)
            
            ProjectsListView(projectListFilter: type)
            
        }
    }

}


