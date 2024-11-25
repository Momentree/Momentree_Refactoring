//
//  Project+Extension.swift
//  TuistExtensions
//
//  Created by 이재훈 on 11/25/24.
//

import ProjectDescription

// MARK: - Project Extension
extension Project {
    public static func app(
        name: String,
        destinations: Destinations,
        dependencies: [TargetDependency],
        testDependencies: [TargetDependency]
    ) -> Project {
        .init(
            name: name,
            targets: makeAppTargets(
                name: name,
                destinations: destinations,
                dependencies: dependencies,
                testDependencies: testDependencies
            ),
            resourceSynthesizers: []
        )
    }
}

// MARK: - Private Helpers
private extension Project {
    static func makeAppTargets(
        name: String,
        destinations: Destinations = .iOS,
        productName: String? = productName,
        bundleId: String = bundleId,
        deploymentTargets: DeploymentTargets? = deployTarget,
        dependencies: [TargetDependency],
        testDependencies: [TargetDependency],
        coreDataModels: [CoreDataModel] = []
    ) -> [Target] {
        [
            makeMainTarget(
                name: name,
                destinations: destinations,
                productName: productName,
                bundleId: bundleId,
                deploymentTargets: deploymentTargets,
                dependencies: dependencies,
                coreDataModels: coreDataModels
            ),
            makeTestTarget(
                name: name,
                destinations: destinations,
                bundleId: bundleId,
                dependencies: testDependencies
            )
        ]
    }
    
    static func makeMainTarget(
        name: String,
        destinations: Destinations,
        productName: String?,
        bundleId: String,
        deploymentTargets: DeploymentTargets?,
        dependencies: [TargetDependency],
        coreDataModels: [CoreDataModel]
    ) -> Target {
        .target(
            name: name,
            destinations: destinations,
            product: .app,
            productName: productName,
            bundleId: bundleId,
            deploymentTargets: deploymentTargets,
            infoPlist: .extendingDefault(with: SettingsDictionary.baseInfoPlist),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: dependencies,
            settings: .settings(
                base: [:],
                configurations: Configuration.configure(
                    configurations: Configuration.ConfigScheme.allCases
                )
            ),
            coreDataModels: coreDataModels
        )
    }
    
    static func makeTestTarget(
        name: String,
        destinations: Destinations,
        bundleId: String,
        dependencies: [TargetDependency]
    ) -> Target {
        .target(
            name: "\(name)Tests",
            destinations: destinations,
            product: .unitTests,
            bundleId: "\(bundleId)Tests",
            sources: ["Tests/**"],
            resources: [],
            dependencies: dependencies
        )
    }
    

}
/Volumes/SSD2TB/Personal/SwiftUI/Momentree_Refactoring/Project/Configuration/XCConfigs
