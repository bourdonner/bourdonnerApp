
////
////  ProjectsView.swift
////  bourdonner
////
////  Created by Erick Martins on 01/10/21.
////
import SwiftUI
struct ProjectsView : View{
    @State var type: ProjectType
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        VStack{
     
//            Text(type.rawValue)
//                    .font(Omnes.bold.font(size: 21))
//                    .opacity(1)
            
                ScrollView {
                    ProjectsListView(projectListFilter: type)
                    
                }
            Spacer()

        }
        .navigationBarTitle(type.rawValue, displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action: {
            handleBackButton()}, label: {
                Image(systemName: "chevron.left")}))
        

    }

    func handleBackButton(){
        presentationMode.wrappedValue.dismiss()
        
    }
    
}


