//
//  RangeController.swift
//  Test
//
//  Created by Alexandra Gorshkova on 09.07.2018.
//  Copyright © 2018 Alexandra Gorshkova. All rights reserved.
//

import Foundation
import UIKit

class RangeControlleer: UIViewController {
    
    @IBOutlet weak var collection: UICollectionView!
    @IBOutlet weak var start: UITextField!
    @IBOutlet weak var finish: UITextField!
    @IBOutlet weak var filtr: UIButton!
        
    var filtArray  = [ Event]()
    var startInput : Int = 0
    var finishInput : Int = 0
    @IBAction func filtr(_ sender: Any) {
        if startInput != nil && finishInput != nil {
            filtration(start: startInput, finish: finishInput)
        }
    }
   /*
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
        */
    

    func filtration(start : Int, finish: Int)  {
       // for elem in filtArray.count {
          print(filtArray)
       // }
        
    }
        
    
    
}

extension RangeControlleer: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) ->
        UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"SomeItem", for: indexPath) //as!
          //  CollectionViewCell
            return cell
    }
}
extension RangeControlleer: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
    }
}
