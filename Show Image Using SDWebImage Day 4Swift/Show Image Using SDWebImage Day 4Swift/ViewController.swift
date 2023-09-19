//
//  ViewController.swift
//  Show Image Using SDWebImage Day 4Swift
//
//  Created by Shimaa Alaa Youssef on 09/09/2023.
//

import UIKit
import Kingfisher

class ImageCollectionViewController: UICollectionViewController {
    let imageUrls = [
        "https://pngimage.net/wp-content/uploads/2018/05/courses-png-6.png",
        "https://leisure.union.ufl.edu/Content/Images/leisure-courses.png",
        "https://cdn2.iconfinder.com/data/icons/new-year-resolutions/64/resolutions-06-512.png",
        "https://pngimage.net/wp-content/uploads/2018/05/courses-png.png",
        "https://www.pngitem.com/pimgs/m/49-491826_of-course-developing-your-employee-engagement-offering-business.png",
        "https://feedbacksystems.com/wp-content/uploads/2019/12/Business.png"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Configure the collection view layout
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 100, height: 100)
        collectionView.collectionViewLayout = layout
        
        // Register custom UICollectionViewCell if needed
        // collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "CustomCell")
        
        // Set the data source and delegate
        collectionView.dataSource = self
        collectionView.delegate = self
        
        // Load images using SDWebImage or Kingfisher
        for imageUrl in imageUrls {
            // Using SDWebImage
            let url = URL(string: imageUrl)
            SDWebImageDownloader.shared.downloadImage(with: url) { (image, _, _, _) in
                // Handle downloaded image
                // e.g., store it in an array or data source and reload the collection view
            }
            
            // Using Kingfisher
            // let url = URL(string: imageUrl)
            // let imageView = UIImageView()
            // imageView.kf.setImage(with: url)
            // Handle downloaded image
            // e.g., store it in an array or data source and reload the collection view
        }
    }
    
    // Implement UICollectionViewDataSource methods here
    
    // Implement UICollectionViewDelegate methods here
}
