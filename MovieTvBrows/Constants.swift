//
//  Constants.swift
//  MovieTvBrows
//
//  Created by Rohan Bhojak  on 21/11/25.
//

import Foundation
import SwiftUI

struct Constants {
    static let imageURL1 = "https://image.tmdb.org/t/p/w500/nnl6OWkyPpuMm595hmAxNW3rZFn.jpg"
    static let playString = "Play"
    static let downloadString = "Download"
    static let trendingMoviesString = "Trending Movies"
    static let topRatedMoviesString = "Top Rated Movies"
    static let topTvShowsString = "Top Tv Shows"
    static let imageURL2 = "https://image.tmdb.org/t/p/w500/d5iIlFn5s0ImszYzBPb8JPIfbXD.jpg"
    static let imageURL3 = "https://image.tmdb.org/t/p/w500/qJ2tW6WMUDux911r6m7haRef0WH.jpg"
//    static let imageURL4 = "https://www.humblethinker.in/2022/10/blog-post.html"
//    static let imageURL5 = "https://www.imdb.com/title/tt4154796/mediaviewer/rm2775147008/?ref_=tt_ov_i"
    
    static let list = [imageURL1, imageURL2, imageURL3]
}
extension Text {
    func ghostButtonStyle() -> some View {
        self
            .frame(width: 100 , height: 50)
            .foregroundStyle(.buttonText)
            .bold()
            .background(){
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke( .buttonBorder, lineWidth: 5)
                    
            }
    }
}
