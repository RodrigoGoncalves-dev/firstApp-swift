//
//  ContentView.swift
//  LandMarks
//
//  Created by Rodrigo Gonçalves on 16/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
