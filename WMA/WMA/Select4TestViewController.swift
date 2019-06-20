//
//  Select4TestViewController.swift
//  WMA
//
//  Created by 岩淵悠斗 on 2019/06/12.
//  Copyright © 2019 Iwabuchi Yuto. All rights reserved.
//

import UIKit

class Select4TestViewController: UIViewController {
    
   
    
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var Button5: UIButton!

    var correctAnswer = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        RandomQuestions()
        
        // Do any additional setup after loading the view.
    }
//    //    日本語用の配列
//    var wordMeaning: [String] = ["りんご","犬","学校","休暇"]
////    英語の配列
    var eWords1: [String] = ["apple","dog","school","happy"]
   
    var RandomNumber:Int = 0
    
////    答えとなる辞書」
    var answer: [String: String] = [
        "apple": "りんご",
        "dog": "犬",
        "school": "学校",
        "vacation": "休暇",
    ]
//    正解の時の表示
    func Correct () {
        QuestionLabel.text = "正解です"
    }
//    不正解の時の表示
    func Wrong () {
        QuestionLabel.text = "不正解です"
    }
    
    func RandomQuestions() {
        var eCount = eWords1.count
            if eCount > 0 {
                print(eCount)
                RandomNumber = Int(arc4random_uniform(UInt32(eCount)))
                print(RandomNumber)
                QuestionLabel.text = eWords1[RandomNumber]
                eWords1.remove(at: RandomNumber)
                eCount -= 1
                print(eCount)
            } else {
                QuestionLabel.text = "問題は終わりです"
        }
            
//        for e in ShuffuledWord {
//                QuestionLabel.text = e
//
//                Button1.setTitle("りんご", for: .normal)
//                Button2.setTitle("バナナ", for: .normal)
//                Button3.setTitle("キウイ", for: .normal)
//                Button4.setTitle("なし", for: .normal)
//                correctAnswer = "1"
//
//
//
//        }
        
        
        
    }
    
    
    
    @IBAction func Button1Action(_ sender: Any) {
        if (correctAnswer == "1") {
            Correct()
        } else {
           Wrong()
        }
        
    }
    @IBAction func Button2Action(_ sender: Any) {
        if (correctAnswer == "2") {
            Correct()
        }  else {
            Wrong()
        }
    }
    @IBAction func Button3Action(_ sender: Any) {
        if (correctAnswer == "3") {
            Correct()
        }  else {
            Wrong()
        }
    }
    @IBAction func Button4Action(_ sender: Any) {
        if (correctAnswer == "4") {
            Correct()
        }  else {
            Wrong()
        }
    }
    @IBAction func Button5Action(_ sender: Any) {
        if (correctAnswer == "5") {
            QuestionLabel.text = "わからない"
        }
    }
    
    
    @IBAction func Next(_ sender: Any) {
        RandomQuestions()
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
