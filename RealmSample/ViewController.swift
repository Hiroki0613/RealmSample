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
    
    //Playerをインスタンス化
    let player1 = Player()
    let player2 = Player()
    let player3 = Player()
    
    //Coachをインスタンス化
    let coach = Coach()
    
    //Teamをインスタンス化
    let team = Team()
    
    //Realmのインスタンス(実物)を作成
    let realm = try! Realm()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setCoach()
        setTeam()


        print(player1)
        print(player2)
        print(player3)

        print(Realm.Configuration.defaultConfiguration.fileURL!)

        try! realm.write {
            realm.add(team)
    }
    
    
    func setPlayer(){
        //player1のプロパティを入力
        player1.name   = "Bill"
        player1.height = 180.3
        player1.weight = 54.5
        player1.memo   = "genius"
        
        //player2のプロパティを入力
        player2.name   = "Steve"
        player2.height = 175.2
        player2.weight = 65.3
        player2.memo   = "creator"

        //player3のプロパティを入力
        player3.name   = "Tim"
        player3.height = 178.0
        player3.weight = 62.3
        player3.memo   = "CEO"
        

        }
    }
    
    func setCoach(){
        coach.name = "Jhon"
        coach.year = 3
    }
    
    func setTeam(){
        team.id   = 1
        team.name = "Bulls"
        team.coach = coach
    }
    
    
    @IBAction func deleteRealmData(_ sender: Any) {
        
        try! realm.write {
            realm.deleteAll()
        }
    }
}

