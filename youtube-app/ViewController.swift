//
//  ViewController.swift
//  youtube-app
//
//  Created by 赤堀雅司 on 7/6/20.
//  Copyright © 2020 赤堀雅司. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  var model = Model()

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    model.getVideos()
      }


}

