import ProjectDescription
import TuistExtensions

let momentree =
Project.app(
    name: Project.appName,
    destinations: .iOS,
    dependencies: [
        .ComposableArchitecture,
        .TCACoordinators
    ],
    testDependencies: [
        
    ]
)

