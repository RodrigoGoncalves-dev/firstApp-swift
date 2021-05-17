//
//  LandMarksApp.swift
//  LandMarks
//
//  Created by Rodrigo Gonçalves on 16/05/21.
//

import SwiftUI

@main
struct LandMarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            HikeView(hike: modelData.hikes[0])
        }
    }
}
