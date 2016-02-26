//
//  ChatViewController.swift
//  ParseApp
//
//  Created by Gary Ghayrat on 2/25/16.
//  Copyright © 2016 Gary Ghayrat. All rights reserved.
//

import UIKit
import Parse

class ChatViewController: UIViewController {

    
    @IBOutlet weak var chatText: UITextField!
    @IBOutlet weak var button: UIButton!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var gameScore = PFObject(className:"Message")
        gameScore["text"] = self.chatText.text
        gameScore.saveInBackgroundWithBlock {
            (success: Bool, error: NSError?) -> Void in
            if (success) {
                // The object has been saved.
                print(self.chatText.text);
            } else {
                // There was a problem, check error.description
            }
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func presentViewController(_ viewControllerToPresent: UIViewController,
        animated flag: Bool,
        completion completion: (() -> Void)?){
    }
    
    @IBAction func sendButton(sender: AnyObject) {
        print("hello")
        print(self.chatText.text);

    }
    @IBAction func editText(sender: AnyObject) {
        
        print("hello")
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
