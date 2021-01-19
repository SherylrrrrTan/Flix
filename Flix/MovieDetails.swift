//
//  MovieDetails.swift
//  Flix
//
//  Created by Peiwen Tan on 1/18/21.
//

import UIKit
import AlamofireImage
class MovieDetails: UIViewController {
    

    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()

        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        let base_url = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let poster_url = URL(string: base_url+posterPath)!
        
        posterView.af_setImage(withURL: poster_url)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdrop_url = URL(string: "https://image.tmdb.org/t/p/w780"+backdropPath)!
        
        backdropView.af_setImage(withURL: backdrop_url)
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
