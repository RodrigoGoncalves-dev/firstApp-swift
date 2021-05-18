//
//  CategoryRow.swift
//  LandMarks
//
//  Created by Rodrigo Gonçalves on 17/05/21.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false) {
                HStack (alignment: .top, spacing: 0) {
                    ForEach(items) { landmark in
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            CategoryItem(landmark: landmark)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(
            categoryName: ModelData().landmarks[0].category.rawValue, items: Array(ModelData().landmarks.prefix(4))
        )
    }
}
