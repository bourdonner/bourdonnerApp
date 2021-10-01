//
//  SkillLink.swift
//  bourdonner
//
//  Created by Erick Martins on 01/10/21.
//

import Foundation
import SwiftUI

struct SkillLink: View {
    var skill: Skill
  //  var project: Projects
    var width: CGFloat = 120
    
    var body: some View {
        NavigationLink(destination: Text("Em construção"), label: {
            SkillView(skill: skill, width: width)
        })
    }
    
}
