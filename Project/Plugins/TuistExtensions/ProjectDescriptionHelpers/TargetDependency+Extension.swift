//
//  TargetDependency+Extension.swift
//  TuistExtensions
//
//  Created by 이재훈 on 11/25/24.
//

import ProjectDescription

public extension TargetDependency {
    nonisolated(unsafe) static var ComposableArchitecture: TargetDependency = .external(name: "ComposableArchitecture")
    nonisolated(unsafe) static var TCACoordinators: TargetDependency = .external(name: "TCACoordinators")
}
