//
//  HorizontalListView.swift
//  MovieTvBrows
//
//  Created by Rohan Bhojak  on 21/11/25.
//

import Foundation
import SwiftUI

struct HorizontalListView : View {
    var header: String
    var titles : [String]
    
    var body: some View {
        VStack(alignment : .leading){
            Text(header)
                .font(.title)
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(titles, id:\.self) { title in
                        AsyncImage(url: URL(string: title)){ image in
                           image
                                .resizable()
                                .scaledToFit()
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 130, height: 200)
                    }
                }
            }
            
        }
        .frame(height: 250)
        .padding(10)
    }
}
#Preview {
    HorizontalListView(header: Constants.trendingMoviesString, titles: [Constants.imageURL1, Constants.imageURL2, Constants.imageURL3])
}
