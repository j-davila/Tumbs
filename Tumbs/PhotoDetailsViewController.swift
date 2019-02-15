//
//  PhotoDetailsViewController.swift
//  Tumbs
//
//  Created by JOSE DAVILA on 2/14/19.
//  Copyright © 2019 Jose Davila. All rights reserved.
//

import UIKit
import AlamofireImage

class PhotoDetailsViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var post: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let photos = post["photos"] as? [[String: Any]] {
            let photo = photos[0]
            let originalSize = photo["original_size"] as! [String: Any]
            let urlString = originalSize["url"] as! String
            let url = URL(string: urlString)
            
            imageView.af_setImage(withURL: url!)

    }
}

}
