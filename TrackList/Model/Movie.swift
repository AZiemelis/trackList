//
//  Movie.swift
//  TrackList
//
//  Created by arturs.ziemelis on 18/11/2021.
//

import Foundation

struct Movie {
    let movie: String
    let year: String
    let poster: String
    let descriptions: String
    
    
    static func createMovie() -> [Movie] {
        var movies: [Movie] = []
        
        let movieNames = DataManager.shared.movie
        let posters = DataManager.shared.poster
        let years = DataManager.shared.year
        let description = DataManager.shared.descriptions
        
        for index in 0..<movieNames.count {
            let movie = Movie(movie: movieNames[index], year: years[index], poster: posters[index], descriptions: description[index])
            movies.append(movie)
        }
        
        return movies
    }
}


