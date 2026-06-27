//  SceneDelegate.swift
//  recipe book
//
//  Created by Mark Volkmann on 6/27/26.

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow? // UIKit sets this.

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let window else { return }

        // Display the splash screen.
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        window.rootViewController = storyboard.instantiateViewController(
            withIdentifier: "SplashViewController"
        )

        // After two seconds, display the main screen.
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak window] in
            guard let window,
                  let mainViewController = storyboard
                  .instantiateInitialViewController()
            else { return }

            UIView.transition(
                with: window,
                duration: 0.25,
                options: .transitionCrossDissolve
            ) {
                window.rootViewController = mainViewController
            }
        }
    }
}
