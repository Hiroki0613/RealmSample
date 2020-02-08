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
//    let coach = Coach()
    
    //Teamをインスタンス化
    let team = Team()
    
    //複数のPlayerリストをインスタンス化
    let players = List<Player>()
    
    //Realmのインスタンス(実物)を作成
    let realm = try! Realm()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        setCoach()
        setTeam()
        setPlayer()
        
        
        players.append(player1)
        players.append(player2)
        players.append(player3)
        
        team.players.append(objectsIn: players)


//        print(players)
//        print(Realm.Configuration.defaultConfiguration.fileURL!)

        try! realm.write {
            realm.add(players)
        }
        
        //Player内のデータを取得
//        let results = realm.objects(Player.self)
//        print("hirohiroAll")
//        print(results)
        
        //Player内のデータの数を取得
//        print("hirohiroCount")
//        print(results.count)
//
//        print("hirohiroProperty")
//        print("氏名 = \(results[0].name)")
//        print("身長 = \(results[0])")
        
//        let results = realm.objects(Player.self).filter("name == 'Steve'")
//        print(results)
        
//        let predicate = NSPredicate(format: "name == %@", "Bill")
//        let results = realm.objects(Player.self).filter(predicate)
//        print(results)
        
//        let results = realm.objects(Player.self).filter("height >= 170").first
//        print(results)
        
        
        let results = realm.objects(Player.self).sorted(byKeyPath: "height", ascending: true)
        print(results)
        
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
    
//    func setCoach(){
//        coach.name = "Jhon"
//        coach.year = 3
//    }
    
    func setTeam(){
        team.id   = 1
        team.name = "Bulls"
//        team.coach = coach

    }
    
    
    @IBAction func deleteRealmData(_ sender: Any) {
        
        try! realm.write {
            realm.deleteAll()
        }
    }
}

