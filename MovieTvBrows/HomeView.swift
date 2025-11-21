//
//  HomeView.swift
//  MovieTvBrows
//
//  Created by Rohan Bhojak  on 18/11/25.
//

import Foundation
import SwiftUI

struct HomeView: View {
    var titleImageURL = Constants.imageURL1
    var body: some View {
        //Text("Hello User !!")
        GeometryReader { geo in
            ScrollView(.vertical) {
                LazyVStack {
                    AsyncImage(url: URL(string: titleImageURL)){image in
                        image
                            .resizable()
                            .scaledToFit()
                            .overlay {
                                LinearGradient(stops: [Gradient.Stop(color: .clear, location: 0.80), Gradient.Stop(color: .gradient, location: 1)],
                                    startPoint: .top,
                                    endPoint: .bottom)
                            }
                    }placeholder: {
                        ProgressView()
                    }
                    .frame(width: geo.size.width , height: geo.size.height * 0.85)
                    HStack{
                        Button{
                            
                        }label: {
                            Text(Constants.playString)
                                .ghostButtonStyle()
                        }
                        
                        Button{
                            
                        } label: {
                            Text(Constants.downloadString)
                                .ghostButtonStyle()
                        }
                    }
                    
                    HorizontalListView(header: Constants.trendingMoviesString, titles: [Constants.imageURL1, Constants.imageURL2, Constants.imageURL3])
                    HorizontalListView(header: Constants.topRatedMoviesString, titles: [ Constants.imageURL2, Constants.imageURL3, Constants.imageURL1])
                }
            }
        }
    }
}
#Preview {
    HomeView()
}
