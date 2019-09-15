//
//  MovieTableViewCell.swift
//  StudioGhibli
//
//  Created by Vania Radmila Alfitri on 15/09/19.
//  Copyright © 2019 Gojek. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieDirectorLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateData(model: Movie) {
        movieNameLabel.text = model.title
        movieDirectorLabel.text = model.director
    }

}
