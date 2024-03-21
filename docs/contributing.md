# Contributing
Thanks for showing interest in contributing to Julia Package Comparisons!
This page is intended to inform people who want to contribute on how to do it.
It will contain conventions for how things are normally done, and guides on how to do specific things. Most people who end up here will probably be most interested in [this guide](#modify-existing-content) on how to modify existing content.

\toc

## Style Conventions
There are many different ways to write the same content.

- The page could be intended for reading from start to finnish, or more like a look-up.
- The page could be formal and impersonal in language, or more verbal in style.
- A page could start with a summary, have a table of contents, or use lists and tables.

A consistent style makes the pages easier to read and possibly write, and helps giving a coherent impression.
However, the best style for a resource like Julia Package Comparisons is not known.
Also, it may differ for different pages due to the nature of the content.

Therefore, there are currently no style conventions.
Experiment freely, and do whatever you feel best compares the packages, keeping in mind that new users will benefit the most from this resource.
If a superior style emerges, it may become the conventional style.

## Guides
We want to make it easy for everyone, including people with little experience with github, to contribute.
To make this true, this section will contain guides on how to contribute in different ways for absolute beginners.

### Modify existing content
If you just want to contribute some knowledge/time in writing content for the pages, but you do know know how to create/restructure pages, this is the place for you. This (very brief) guide is about how to modify existing content, to e.g. rewrite or add paragraph. This is not the only way to modify content, but it is the easiest.

When visiting any page, such as the [home page](https://juliapackagecomparisons.github.io/), there will be a "Page source" link in the top right:
![image](https://github.com/JuliaPackageComparisons/JuliaPackageComparisons.github.io/assets/61620837/4af9d61a-ddc5-4124-89df-049968ec64b4)

If you click it, you will be taken to a github view of the file content. In it, there is a little edit button:
![image](https://github.com/JuliaPackageComparisons/JuliaPackageComparisons.github.io/assets/61620837/0a5be125-d487-4737-854e-3dcdd7614317)

If you click it, you can change the page however you like. From there, you can "Commit changes...", which should guide you through the process of creating a branch, and creating a Pull Request. Once that Pull Request is merged, you changes will go live on the actual webpage!

### Build docs locally
To instantly review any changes you make, it is useful to host the website locally.
Whenever you propose changes to a GitHub project, it is a good idea to "Fork" the project.
Log in to your GitHub acount, and go to [the repository](https://github.com/JuliaPackageComparisons/JuliaPackageComparisons.github.io).
Next to the stars (close to top right), you can see a "Fork" button.
Press it, and you should have a GitHub-hosted version of the webpage that you can freely edit.

It is always a good idea to make a new branch to make changes to, for cleen book-keeping.
I find it easiest via the menu on your newly created fork.
Just above where the files and folders appear, to the left, you should see a little branch, and "main".
Click it, type in a name that indicated what changes you want to make, and create the branch.

To preview your changes, you need to clone your new fork locally (essentially downloading it).
In a shell (terminal), run the following command (with `you_username` replaced)

```bash
git clone --single-branch --branch your_branch_name https://github.com/your_username/JuliaPackageComparisons.github.io
```

This created a new folder inside whatever folder you were in called "JuliaPackageComparisons.github.io".
If you enter that folder (`cd JuliaPackageComparisons.github.io`), you can now open a locally hosted version of the webpage as follows:

```bash
cd JuliaPackageComparisons.github.io/docs
julia --project=. -e 'using Pkg; Pkg.instantiate(); using Franklin; lunr(); serve()'
```

You default browser should open a new tab at `http://localhost:8000/`, showing the locally hosted page.
Changes you make to the content will be automatically detected, and the generated page will be updated in real-time as you run the above command.
After having made the changes you want, you can commit you changes, push them to github, and then use the GitHub web page to open up a pull-request to make you changes in the original repository.
Relevant git commands are `git commit` and `git push`, but if that is also new to you, you should probably google how to use git (a version control system) and GitHub (a website and hosting service) first.

### Update existing content
TODO: write guide

### Create a new section
To make a section `<new_section>`, two things need to be done:
1)  Add `docs/comparisons/<meta_section>/<new_section>.md` file.
2)  Update package list `PKGINFOS` in `docs/utils.jl`.

[PR#79](https://github.com/JuliaPackageComparisons/JuliaPackageComparisons.github.io/pull/79) (adding JSON section) will be a good reference to add a new section.

**Add markdown file**

A markdown file containing the section will have to be created inside the "pages" folder.
The filename should use underscores for spaces, have only lowercase letters, and match the title of the section as well as possible.
Start the file content with:

```md
+++
title = "New section"
+++

# New section
```

**Update package list**

You also need to update package list `PKGINFOS` in `docs/utils.jl` when you refer new packages in the new section.
The `PkgInfo` struct has seven fields, and can be defined with kwargs:

* `pkgname`
    * Package name without `.jl` suffix.
* `username`
    * Username (or organization name) of GitHub repository.
* `branch` (optional, default: `"main"`)
    * Default branch name
* `repolink` (optional, default: `"https://github.com/$username/$pkgname.jl"`)
    * URL to the repository.
    * Set URL explicitly if the package is maintained in monorepo. (e.g. [RecipesBase.jl](https://github.com/JuliaPlots/Plots.jl/tree/master/RecipesBase))
* `docslink` (optional, default: `"https://$username.github.io/$pkgname.jl"`)
    * URL to the documentation.
    * Set `nothing` if the package does not have documentation.
    * Note that `$docslink/dev` and `$docslink/stable` will be used in the documentation.
* `codecovlink` (optional, default: `"https://codecov.io/gh/$username/$pkgname.jl"`)
    * URL to codecov page.
    * Set `nothing` if the repository does not use CodeCov.
* `registered` (optional, default: `true`)
    * Flag for whether the package is registered.

### Create a new meta-section
TODO: write guide more

* Create a new directory `docs/comparisons/<new_meta_section>`.
* Create a new section `docs/comparisons/<new_meta_section>/<new_section>`.
* Update `docs/_layout/pgwrap.html` with `<new_meta_section>`.
