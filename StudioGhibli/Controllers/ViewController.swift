//
//  ViewController.swift
//  StudioGhibli
//
//  Created by Vania Radmila Alfitri on 14/09/19.
//  Copyright © 2019 Gojek. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var networkLayer = NetworkLayer.shared
    var movies: [Movie] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        networkLayer.fetchMovies(successHandler: { [weak self] (movies) in
            print(movies)
            self?.movies = movies
        }) { (error) in
            print(error)
        }
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = (tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell)!
        cell.updateData(model: movies[indexPath.row])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let movieData = movies[indexPath.row]
        
        let movieDetailVC = MovieDetailViewController.init(nibName: "MovieDetailViewController", bundle: nil)
        
        movieDetailVC.movieData = movieData
        
        navigationController?.pushViewController(movieDetailVC, animated: true)
        
        
    }


}

