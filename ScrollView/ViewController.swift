//
//  ViewController.swift
//  ScrollView
//
//  Created by PASHA on 23/07/18.
//  Copyright © 2018 Pasha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageV: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let myPassword = generatePassword(passwordLength: 6)
        print("Secure password: \(myPassword)")
        
        scroll()

        // Do any additional setup after loading the view, typically from a nib.
    }

        func generatePassword(passwordLength: Int) -> String {
            
            let passwordMaterial : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
            let passwordMaterialLength = UInt32(passwordMaterial.length)
            
            var returnValue = ""
            
            for _ in 0 ..< passwordLength {
                let randomPosition = arc4random_uniform(passwordMaterialLength)
                var character = passwordMaterial.character(at: Int(randomPosition))
                returnValue += NSString(characters: &character, length: 1) as String
            }
            
            return returnValue
        }

    
    @IBAction func removeTap(_ sender: Any) {
       
        
  
        
    }
    func scroll() {
        let myImages=["download (1).jpeg","download (1).jpeg","download (1).jpeg",
                      "download (1).jpeg","download (1).jpeg","download (1).jpeg",
                      "download (1).jpeg","download (1).jpeg","download (1).jpeg",
                      "download (1).jpeg","download (1).jpeg","download (1).jpeg",
                      "download (1).jpeg","download (1).jpeg","download (1).jpeg",
                      "download (1).jpeg","download (1).jpeg","download (1).jpeg",
                      "download (1).jpeg","download (1).jpeg","download (1).jpeg",
                      "download (1).jpeg","download (1).jpeg","download (1).jpeg",
                      "download (1).jpeg","download (1).jpeg","download (1).jpeg",
                      "download (1).jpeg","download (1).jpeg","download (1).jpeg",
                      "download (1).jpeg","download (1).jpeg","download (1).jpeg",
                      "download (1).jpeg","download (1).jpeg","download (1).jpeg",
                      "download (1).jpeg","download (1).jpeg","download (1).jpeg",
                      "download (1).jpeg","download (1).jpeg","download (1).jpeg",
                      "download (1).jpeg","download (1).jpeg","download (1).jpeg",
                      "download (1).jpeg","download (1).jpeg","download (1).jpeg",
                      "download (1).jpeg","download (1).jpeg","download (1).jpeg",
                      "download (1).jpeg","download (1).jpeg","download (1).jpeg",
                      "download (1).jpeg","download (1).jpeg","download (1).jpeg",
                      "download (1).jpeg","download (1).jpeg","download (1).jpeg",
                      "download (1).jpeg","download (1).jpeg","download (1).jpeg",
                      "download (1).jpeg","download (1).jpeg","download (1).jpeg",
                      "download (1).jpeg","download (1).jpeg","download (1).jpeg",
                      "download (1).jpeg","download (1).jpeg","download (1).jpeg",
                      "download (1).jpeg","download (1).jpeg","download (1).jpeg",
                      "download (1).jpeg","download (1).jpeg","download (1).jpeg",
                      "download (1).jpeg","download (1).jpeg","download (1).jpeg",
                      "download (1).jpeg","download (1).jpeg","download (1).jpeg"
        ]
        let imageWidth:CGFloat = 275
        let imageHeight:CGFloat = 147
        var yPosition:CGFloat = 0
        var scrollViewContentSize:CGFloat=0;
        for (_ , value) in myImages.enumerated()
        {
            
            let myImage:UIImage = UIImage(named: value)!
            let myImageView:UIImageView = UIImageView()
            myImageView.image = myImage
            myImageView.contentMode = .scaleAspectFit
            myImageView.frame.size.width = imageWidth
            myImageView.frame.size.height = imageHeight
            myImageView.center = self.view.center
            myImageView.frame.origin.y = yPosition
            myImageV.addSubview(myImageView)
            let spacer:CGFloat = 20
            yPosition+=imageHeight + spacer
            scrollViewContentSize+=imageHeight + spacer
            myImageV.contentSize = CGSize(width: imageWidth, height: scrollViewContentSize)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

