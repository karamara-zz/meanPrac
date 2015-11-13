//
//  ViewController.swift
//  meanPrac
//
//  Created by sung on 11/12/15.
//  Copyright © 2015 Sung Kang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let socket = SocketIOClient(socketURL: "localhost:5000")

    @IBAction func yellowButtonPressed(sender: UIButton) {
        socket.emit("javascript")
    }
    @IBAction func redButtonPressed(sender: UIButton) {
        socket.emit("swift")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        socket.connect()
        socket.on("connect"){ data, ask in
            print("iOS: : WE ARE USING SOCKETS")
        }
    }
        // Do any additional setup after loading the view, typically from a nib.

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

