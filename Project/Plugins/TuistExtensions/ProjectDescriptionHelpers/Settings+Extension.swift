//
//  Settings+Extensions.swift
//  TuistExtensions
//
//  Created by 이재훈 on 11/25/24.
//

import ProjectDescription

public extension SettingsDictionary {
    // MARK: - InfoPlist
    static let baseInfoPlist: [String: Plist.Value] = [
       // Version (from XCConfig)
       "CFBundleShortVersionString": .string("$(APP_VERSION)"),
       "CFBundleVersion": .string("$(BUILD_NUMBER)"),
       
       // Bundle ID & Display Name (from XCConfig)
       "CFBundleIdentifier": .string("$(APP_IDENTIFIER)"),
       "CFBundleDisplayName": .string("$(APP_BUNDLE_DISPLAYNAME)"),
       
       // Development Region
       "CFBundleDevelopmentRegion": .string("ko_KR"),
       
       // SwiftUI App Settings
       "UIApplicationSceneManifest": .dictionary([
           "UIApplicationSupportsMultipleScenes": .boolean(true),
           "UISceneConfigurations": .dictionary([
               "UIWindowSceneSessionRoleApplication": .array([
                   .dictionary([
                       "UISceneConfigurationName": .string("Default Configuration"),
                       "UISceneDelegateClassName": .string("$(PRODUCT_MODULE_NAME).SceneDelegate")
                   ])
               ])
           ])
       ]),
       
       // Device Orientation
       "UISupportedInterfaceOrientations": .array([
           .string("UIInterfaceOrientationPortrait")
       ]),
       
       // Network Security
       "NSAppTransportSecurity": .dictionary([
           "NSAllowsArbitraryLoads": .boolean(true)
       ]),
       
       // URL Schemes
       "CFBundleURLTypes": .array([
           .dictionary([
               "CFBundleTypeRole": .string("Editor"),
               "CFBundleURLSchemes": .array([.string("$(URL_SCHEMES)")])
           ])
       ])
    ]
}



// GCC_PREPROCESSOR_DEFINITIONS > 옵젝C와 Swift 모두에서 사용 가능한 전처리기 매크로
// SWIFT_ACTIVE_COMPILATION_CONDITIONS > Swift 전용 전처리기 매크로
