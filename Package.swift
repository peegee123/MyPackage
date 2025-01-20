/*

I did this:

git add .
git commit -m "Initial commit"
git remote add origin https://github.com/peegee123/MyPackage.git
git push -u origin main
git remote set-url origin https://peegee123:github_pat_<...>@github.com/peegee123/MyPackage.git
git push -u origin main
-> ok but with wrong username and email

git config --global user.name
->
3firemusic


git config --global user.email
->
peter.woods@3firemusic.com


# change for this project

git config user.name "peegee123"
git config user.email "peter.woods@gmail.com"

git config user.name
git config user.email

git commit -m "Initial commit"
git remote add origin https://github.com/peegee123/MyPackage.git
git push -u origin main

git status
git add .
git status
git commit -m "added comments"
git push
git log


*/

// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyPackage",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MyPackage",
            targets: ["MyPackage"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MyPackage"),
        .testTarget(
            name: "MyPackageTests",
            dependencies: ["MyPackage"]
        ),
    ]
)
