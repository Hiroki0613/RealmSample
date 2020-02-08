//
//  ViewController.swift
//  RealmSample
//
//  Created by 近藤宏輝 on 2020/02/08.
//  Copyright © 2020 Hiroki. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    
    let player1 = Player()
    let player2 = Player(value: ["Steve", 175.2, 65.3, "creator"])
    let player3 = Player()
    
    //Realmのインスタンス(実物)を作成
    let realm = try! Realm()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setPlayer()
        

     
        print(player1)
        print(player2)
        print(player3)
        
        print(Realm.Configuration.defaultConfiguration.fileURL!)
    }
    
    
    func setPlayer(){
        //player1のプロパティを入力
        player1.name   = "Bill"
        player1.height = 180.3
        player1.weight = 54.5
        player1.memo   = "genius"
        
        //player3のプロパティを入力
        player3.name   = "Tim"
        player3.height = 178.0
        player3.weight = 62.3
        player3.memo   = "CEO"
        
        try! realm.write {
            realm.add(player1)
        }
    }
    
    
}

