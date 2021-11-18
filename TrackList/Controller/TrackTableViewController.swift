//
//  TrackTableViewController.swift
//  TrackList
//
//  Created by arturs.ziemelis on 16/11/2021.
//

import UIKit

class TrackTableViewController: UITableViewController {

//    var trackList = [
//           "Carly Rae Japsen - Dedicated",
//           "Dj Khaled - father of",
//           "Injury Reserve - Jailbrake",
//           "Jonas Brothers - Happiness Begins ",
//           "Joyner Lucas - adhd",
//           "Maluma - 11-11",
//           "Never Young - LOSER",
//           "Rammstein - rammstein",
//           "Skepta - Ignorance Is Bliss",
//           "Skillet - Victory",
//           "Tylor the Creator - IGOR",
//           "YG - Stop Snitching",
//       ]
    
    var songs = Song.createSong()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return songs.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let trackCell = tableView.dequeueReusableCell(withIdentifier: "trackListCell", for: indexPath)
        
//        trackCell.textLabel?.text = songs[indexPath.row]
//        trackCell.detailTextLabel?.text = songs[indexPath.row]
//        trackCell.imageView?.image = UIImage(named: songs[indexPath.row])
        
        let song = songs[indexPath.row]
        trackCell.textLabel?.text = song.track
        trackCell.textLabel?.text = song.album
        trackCell.imageView?.image = UIImage(named: song.cover)

        
        
        return trackCell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            print("indexPath: ", indexPath)
            
            let detailVC = segue.destination as! DetailViewController
            detailVC.song = songs[indexPath.row]
        }

    }


}
