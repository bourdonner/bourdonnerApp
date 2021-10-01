//
//  Portfolio.swift
//  bourdonner
//
//  Created by Erick Martins on 28/09/21.
//

import Foundation

struct Skill: Identifiable {
    var id: String
    let skillType: ProjectType
    let image: String
}

struct Experience: Identifiable {
    var id: String
    let companyName: String
    let role: String
    let duration: String
}

class Projects: Identifiable, ObservableObject{
    internal init(id: String, projectName: String, type: ProjectType, projectImage: String, link: String) {
        self.id = id
        self.projectName = projectName
        self.type = type
        self.projectImage = projectImage
        self.link = link
    }
    
    var id: String
    let projectName: String
    let type: ProjectType
    let projectImage: String
    var link: String
}

enum ProjectType: String {
    case userInterface = "User Interface"
    case swift = "Swift"
    case motionGraphics  = "Motion Graphics"
    case videoEditing  = "Video Editing"
    case graphicDesign = "Graphic Design"
    
}


struct Portfolio {
    let name: String
    let role: String
    let description: String
    let location: String
    
    let skills: [Skill]
    let experiences: [Experience]
    let projects: [Projects]
    
}
