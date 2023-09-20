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

### Host the website locally
To instantly review any changes you make, it is useful to host the website locally.
TODO: write guide

</br>

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