//
//  ColorView.swift
//  ColorView
//
//  Created by Jakub Majewski on 01.04.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//
//  coder to serializacja obiektu to zapisywanie obiektu w specyficznej postaci
//  można go później zczytać w zapisanym stanie
//
//  layer to warstwa wyświetlana w widoku

import UIKit

class ColorView: UIView {
    let colors:[UIColor] = [.red, .yellow, .orange, .green, .blue, .purple]
    var colorCounter = 0
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let scheduledColorChange = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { (timer) in
            UIView.animate(withDuration: 2.0, animations: {
                self.layer.backgroundColor = self.colors[self.colorCounter % 6].cgColor
                self.colorCounter += 1
            })
        }
        scheduledColorChange.fire()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

}
