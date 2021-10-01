//
//  Portfolio.swift
//  bourdonner
//
//  Created by Erick Martins on 28/09/21.
//

import Foundation

struct Skill: Identifiable {
    var id: String
    let skillName: String
    let image: String
}

struct Experience: Identifiable {
    var id: String
    let companyName: String
    let role: String
    let duration: String
}

struct Projects: Identifiable {
    var id: String
    let projectName: String
    let type: String
    let projectImage: String
    var link: String
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
