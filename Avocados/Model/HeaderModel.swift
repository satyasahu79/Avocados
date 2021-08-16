//
//  HeaderModel.swift
//  Avocados
//
//  Created by Satya Prakash Sahu on 16/08/21.
//

import Foundation
import SwiftUI

// MARK: - Header Model

struct Header : Identifiable {
    var id = UUID()
    var image : String
    var headline : String
    var subheadline : String
}
