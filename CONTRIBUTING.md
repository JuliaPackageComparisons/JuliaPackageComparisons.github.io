# Contributing
Thanks for showing interest in contributing to Julia Package Comparisons! This file is intended to inform people who want to contribute on how to do it. It will contain conventions for how things are normally done, and guides on how to do specific things.

</br>
</br>
</br>

## Style Conventions
There are many different ways to write the same content. 
- The page could be intended for reading from start to finnish, or more like a loop-up.
- The page could be formal and impersonal in language, or more verbal in style.
- A page could start with a summary, have a table of contents, or use lists and tables.

A consistent style makes the pages easier to read and possibly write, and helps giving a coherent impression. However, the best style for a resource like Julia Package Comparisons is not known. Also, it may differ for different pages due to the nature of the content.

Therefore, there are currently no style conventions. Experiment freely, and do whatever you feel best compares the packages, keeping in mind that new users will benefit the most from this resource. If a superior style emerges, it may become the conventional style.

</br>
</br>

## Guides
We want to make it easy for everyone, including people with little experience with github, to contribute. To make this true, this section will contain guides on how to contribute in different ways for absolute beginners.

</br>

### Make changes and view them instantly
To instantly review any changes you make, it is useful to host the website locally. Whenever you propose changes to a GitHub project, it is a good idea to "Fork" the project. Log in to your GitHub acount, and go to [the repository](https://github.com/JuliaPackageComparisons/JuliaPackageComparisons.github.io). Next to the stars (close to top right), you can see a "Fork" button. Press it, and you should have a GitHub-hosted version of the webpage that you can freely edit.

To preview your changes, you need to clone your new fork locally (essentially downloading it). In a shell (terminal), run the following command (with `you_username` replaced)
```
git clone https://github.com/your_username/JuliaPackageComparisons.github.io
```

This created a new folder inside whatever folder you were in called "JuliaPackageComparisons.github.io". If you enter that folder (`cd JuliaPackageComparisons.github.io`), you can now open a locally hosted version of the webpage as follows:
```bash
julia --project=. -e 'using Pkg; Pkg.instantiate(); using Franklin; serve()'
```
You default browser should open a new tab at `http://localhost:8000/`, showing the locally hosted page. Changes you make to the content will be automatically detected, and the generated page will be updated in real-time as you run the above command. After having made the changes you want, you can commit you changes, push them to github, and then use the GitHub web page to open up a pull-request to make you changes in the original repository. Relevant git commands are `git commit` and `git push`, but if that is also new to you, you should probably google how to use git (a version control system) and GitHub (a website and hosting service) first.

### Make changes to existing content
TODO: write guide

</br>

### Making a Section
To make a section, a two things need to be done. A markdown file containing the section will have to be created inside the "pages" folder. The filename should use underscores for spaces, have only lowercase letters, and match the title of the section as well as possible. Start the file content with `# Section title`.

You also need to add an entry in "_layout/sidebar.html" to make you page appear in the menu. New sections should be added to the bottom on the menu until a convention for the ordering of sections is in place. An example sidebar entry is as follows:
```
<a class="sidebar-nav-item {{ispage pages/graphs/*}}active{{end}}" href="/pages/graphs/"> Graphs
</a>
```
Simply copy an existing entry, update the page name (`graphs` in `pages/graphs/*` and `/pages/graphs/`), and change the text that will show in the menu ("Graphs" in the example).
