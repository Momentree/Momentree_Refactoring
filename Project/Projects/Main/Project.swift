import ProjectDescription
import TuistExtensions

let momentree = Project.app(
    name: Project.appName,
    destinations: .iOS,
    dependencies: [
//        TargetDependency.SPM.ComposableArchitecture,
//        TargetDependency.SPM.TCACoordinator
    ],
    testDependencies: [
        
    ]
)

