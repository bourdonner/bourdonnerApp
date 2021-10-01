//
//  FontManager.swift
//  bourdonner
//
//  Created by Erick Martins on 28/09/21.
//

import SwiftUI

enum Omnes {
    case hairline
    case thin
    case light
    case regular
    case bold

    func font(size: CGFloat) -> Font {
        switch self {
        case .hairline:
            return .custom("Omnes-hairline", size: size)
        case .thin:
            return .custom("Omnes-thin", size: size)
        case .light:
            return .custom("Omnes-light", size: size)
        case .regular:
            return .custom("Omnes-regular", size: size)
        case .bold:
            return .custom("Omnes-bold", size: size)
      
      
        }
    }
}
