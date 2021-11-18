//
//  ViewController.swift
//  TrackList
//
//  Created by arturs.ziemelis on 16/11/2021.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var trackNameLabel: UILabel!
    @IBOutlet weak var trackImageView: UIImageView!
    
    var song: Song!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if song != nil {
            trackImageView.image = UIImage(named: song.cover)
            trackNameLabel.text = song.track + " - " + song.album
        }
        
        
    }


}

