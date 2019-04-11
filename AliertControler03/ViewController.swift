//
//  ViewController.swift
//  AliertControler03
//
//  Created by D7703_22 on 2019. 4. 11..
//  Copyright © 2019년 fb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func camButton(_ sender: Any) {
        let myAlertController = UIAlertController(title: "Camera", message: "Take a Picture", preferredStyle: .actionSheet)
        
        //UIAlertAction 정의
        //let camAction = UIAlertAction(title: "사진 촬영", style: .default, handler: nil)
        let camAction = UIAlertAction(title: "사진 촬영", style: .default) {
            (action:UIAlertAction) -> Void in
                self.lbl1.text = "사진촬영을 시작합니다."
                self.view.backgroundColor = UIColor.blue
            
            }
        //let libAction = UIAlertAction(title: "사진 라이브러리", style: .default, handler: nil)
        let libAction = UIAlertAction(title: "사진 라이브러리", style: .default, handler: {
            (action:UIAlertAction) -> Void in
            self.lbl1.text = "라이브러리를 시작합니다."
            self.view.backgroundColor = UIColor.brown
            
        }
        )
        //let saveAction = UIAlertAction(title: "사진 저장", style: .default, handler: nil)
        let saveAction = UIAlertAction(title: "사진 저장", style: .default, handler: {
            (action:UIAlertAction) -> Void in
            self.lbl1.text = "사진 저장"
            self.view.backgroundColor = UIColor.lightGray
            
        }
        )
        //let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler: {
            (action:UIAlertAction) -> Void in
            self.lbl1.text = "취소"
            self.view.backgroundColor = UIColor.orange
            
        }
        )
        //let deleteAction = UIAlertAction(title: "삭제", style: .destructive, handler: nil)
        let deleteAction = UIAlertAction(title: "삭제", style: .destructive) {
            (action:UIAlertAction) -> Void in
            self.lbl1.text = "삭제"
            self.view.backgroundColor = UIColor.cyan
            
        }
        
        //UIAlertAction을 UIAlertController에 등록(add)
        myAlertController.addAction(camAction)
        myAlertController.addAction(libAction)
        myAlertController.addAction(saveAction)
        myAlertController.addAction(cancelAction)
        myAlertController.addAction(deleteAction)
        
        self.present(myAlertController, animated: true, completion: nil)
    }
    

}


