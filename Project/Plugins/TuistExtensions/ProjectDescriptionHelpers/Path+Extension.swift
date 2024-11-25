//
//  Path+Extension.swift
//  TuistExtensions
//
//  Created by 이재훈 on 11/25/24.
//

import ProjectDescription

extension Path {
    public static func plistPath(_ plistName: String) -> Path {
         .relativeToRoot("Configuration/InfoPlists/\(plistName).plist")
    }
    
    public static func xcconfigPath(_ xcconfigName: String) -> Path {
        .relativeToRoot("Configuration/XCConfigs/\(xcconfigName).xcconfig")
    }
}
