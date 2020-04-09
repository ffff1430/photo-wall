//
//  photoViewController.swift
//  photo wall
//
//  Created by star on 2020/4/7.
//  Copyright © 2020 star. All rights reserved.
//

import UIKit

class photoViewController: UIViewController {
    
    var photo : Item?
    
    @IBOutlet weak var Imagephoto: UIImageView!
    @IBOutlet weak var Imagephoto1: UIImageView!
    @IBOutlet weak var Imagephoto2: UIImageView!
    @IBOutlet weak var Imagephoto3: UIImageView!
    @IBOutlet weak var Imagephoto4: UIImageView!
    @IBOutlet weak var Imagephoto5: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if photo?.imagename == "pic1" {
            Imagephoto1.image = UIImage(named: photo!.imagename)
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
