//
//  Settings.swift
//  HW13 - ios5
//
//  Created by  Nataly on 31.07.22.
//

import Foundation
struct Settings {
    let imageName: String
    let title: String
    let type: CellType
    
    enum CellType {
        case switchType
        case disclosureType
    }
}


