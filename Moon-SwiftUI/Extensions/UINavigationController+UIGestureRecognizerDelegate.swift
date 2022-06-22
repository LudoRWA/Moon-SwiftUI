//
//  UINavigationController+UIGestureRecognizerDelegate.swift
//  Moon-SwiftUI
//
//  Created by Ludovic Roullier on 18/05/2022.
//

import SwiftUI

extension UINavigationController: UIGestureRecognizerDelegate {
	override open func viewDidLoad() {
		super.viewDidLoad()
		interactivePopGestureRecognizer?.delegate = self
	}
	
	public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
		return viewControllers.count > 1
	}
}
