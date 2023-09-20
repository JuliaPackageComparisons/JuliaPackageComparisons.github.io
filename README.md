# Julia Package Comparisons

Welcome to the repository for Julia Package Comparisons! This repository hosts a website that aims to help Julia users discover and choose between packages. Click the link below to open it!

## [Website link](https://juliapackagecomparisons.github.io/)

## The future of this project
This project is currently a one-person project. The future hope is that the users and developers of the packages being compared will improve and add content to the webpage, in an organic way that mirrors the Julia Package ecosystem. I am currently looking for more maintainers to add and review pull requests, so please contact me if you are interested!

## The problem to be adressed by this project
The Julia Package ecosystem is organic. This means that situations like the ones below occur all the time:
* A new package is registered. It uses a technically superior algorithm to achieve a goal that an existing package solves, but is less tested.
* There are 5 or more different packages that do the same thing in different ways (e.g. automatic differentiation).
* A new package is registered. It makes grand promises, and the documentation looks great. However it appears to be a one-man project, and you are unsure if it is tested or will continue to be maintained and developed.
* Two packages look interesting. You feel like one looks superior, but the other one has more stars.
* One package looks okay, another looks good. The good one is a wrapper of an existing python/C++ package.

Such situations, and many many more, will always be part of an organic package system. However, it can be hard to navigate. 
Currently, users will have to do one or more of the following to choose between competing/overlapping packages:
* Compare the number of stars, and the activity, of the github repository.
* Read the package announcements on [Discourse](https://discourse.julialang.org/c/package-announcements). Compare the number of hearts on the post, and read the comments.
* Ask for a comparison of specific packages on e.g. Discourse (Examples: INSERT LINKS).
* Read the documentation of both packages.
* Try to solve a simple test-problem with both packages, and see which one feels best.

The solutions above take increasingly more effort. Doing all of them is the best way to figure out which package is right for you, but it takes too much effort for many, especially when in the middle of a project where you need a package only for a specific part. The result is likely that many users never discover all the packages that could solve their problem, and definitly do not make a systematic comparison to find the ideal one.

Some packgages try to alleviate this problem by having a "See also" or "Related packges" section in the bottom of their readme. This is a bandaid-fix, as a) work is duplicated if each package repository has this section, and b) there are few guidelines on this section, and it style, existence and scope varies wildly.

Comparisons of packages in any package repository or in a discourse discussion are always suceptable to going out of date, as the organic package ecosystem is ever-changing. A good solution will therefore have to be updatable, and independent of any single package. A github-hosted website solves this issue, as anyone can make PR's and issues as things go out of date.

This project aims to create a canonical and updated website that will
1) make it easier for users to discover packages for specific problems/domains, and
1) learn about the differences between packages that overlap, to enable them to chose the most appropriate one.

## Contributing
This website is created by the users and developers of packages. That includes you! If you see something misleading or wrong, or if you have something to add, please create an [issue](https://github.com/JuliaPackageComparisons/JuliaPackageComparisons.github.io/issues/new) or pull request for this repository.

More detail on the specifics on how to contribute, including guides for beginners, is available in the "CONTRIBUTING.md" file. Find it as one of the files in this repository, among the "README.md" file you are currently reading!