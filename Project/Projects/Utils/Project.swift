//
//  Project.swift
//  Packages
//
//  Created by 이재훈 on 11/25/24.
//

import ProjectDescription

let utils = Project(
    name: "MomentreeUtils",
    targets: [
        .target(
            name: "MomentreeUtils",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.importants.momentree.utils",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["MomentreeUtils/Sources/**"],
            resources: ["MomentreeUtils/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "MomentreeUtilsTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.importants.momentree.utils.tests",
            infoPlist: .default,
            sources: ["MomentreeUtils/Tests/**"],
            resources: [],
            dependencies: [.target(name: "MomentreeUtils")]
        ),
    ]
)

