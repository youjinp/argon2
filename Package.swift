// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "cArgon2",
    products: [
        .library(name: "cArgon2", targets: ["cArgon2"]),
    ],
    targets: [
        .target(
            name: "cArgon2",
            path: ".",
            exclude: [
                "kats",
                "vs2015",
                "latex",
                "libargon2.pc.in",
                "export.sh",
                "appveyor.yml",
                "Argon2.sln",
                "argon2-specs.pdf",
                "CHANGELOG.md",
                "LICENSE",
                "Makefile",
                "man",
                "README.md",
                "src/bench.c",
                "src/genkat.c",
                "src/opt.c",
                "src/run.c",
                "src/test.c",
            ],
            sources: [
                "src/blake2/blake2b.c",
                "src/argon2.c",
                "src/core.c",
                "src/encoding.c",
                "src/ref.c",
                "src/thread.c"
            ]
        )
    ]
)
