//
//  TargetDependency+Extension.swift
//  TuistExtensions
//
//  Created by 이재훈 on 11/25/24.
//

import ProjectDescription

public extension TargetDependency {
    enum SPM {
        public static let ComposableArchitecture = TargetDependency.external(
            name: "ComposableArchitecture"
        )
        public static let TCACoordinator = TargetDependency.external(
            name: "TCACoordinator"
        )
    }
}
