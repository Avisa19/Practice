//
//  CameraContainerView.swift
//  Practice
//
//  Created by Avisa Poshtkouhi on 5/11/19.
//  Copyright © 2019 Avisa Poshtkouhi. All rights reserved.
//

import UIKit

class CameraContainerView: UIView {
 
    let captureButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "icons8-circled").withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    
    let dismissButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "icons8-right").withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(CameraController.handleDismiss), for: .touchUpInside)
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemGray
        addSubview(captureButton)
        captureButton.anchor(top: nil, leading: nil, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 0, bottom: 12, right: 0), size: .init(width: 80, height: 80))
        captureButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        addSubview(dismissButton)
        dismissButton.anchor(top: topAnchor, leading: nil, bottom: nil, trailing: trailingAnchor, padding: .init(top: 12, left: 0, bottom: 0, right: 12), size: .init(width: 50, height: 50))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}