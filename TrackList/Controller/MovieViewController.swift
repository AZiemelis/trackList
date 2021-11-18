//
//  MovieViewController.swift
//  TrackList
//
//  Created by arturs.ziemelis on 18/11/2021.
//

import UIKit

class MovieViewController: UIViewController {

    var movie: Movie!
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = movie.movie
        yearLabel.text = movie.year
        movieImageView.image = UIImage(named: movie.movie)
        descriptionLabel.text = movie.descriptions
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
