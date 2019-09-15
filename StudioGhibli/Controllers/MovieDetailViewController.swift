//
//  MovieDetailViewController.swift
//  StudioGhibli
//
//  Created by Vania Radmila Alfitri on 15/09/19.
//  Copyright © 2019 Gojek. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {
    var movieData: Movie?
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieDescLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let descLabel = movieData?.description {
            movieDescLabel.text = descLabel
        }

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
