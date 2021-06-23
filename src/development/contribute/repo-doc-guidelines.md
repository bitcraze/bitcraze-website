---
layout: page
title: Repository documentation guidelines
page_id: repo-doc-guidelines
---

The source code for the repository documentation is located in each repository, to make it easy to update when the
code is modified.

The repository documentation can be used when coding, directly in you development environment, but it is also published as
a part of this web, on the [repositorsy page]({% id_url repository-overview %}). The publication on the web adds some extra
requirements that are described below.

## Markdown

[Markdown](https://en.wikipedia.org/wiki/Markdown) is used for the documentation, it commonly used and easy to read.

You can find a [markdown cheatsheet here](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)

It is possible to write HTML in the markdown, as well as use HTML styling features. Please **avoid** this and use "pure" markdown as far as possible. HTML makes the markdown hard to read (when not rendered on the web) and it will most likely not look OK on all types of devices.

## Files

All documentation goes into the `docs` directory and is organized as a tree, markdown files uses the `.md` extension.
The documentation should be organized in a tree fashion where related information is grouped and with finer detail the
further out on a branch is located. The tree may have an abitrary depth, but the menu only supports 2 levels.

Images goes into the `docs/images` directory, you can use a tree structure here if you like. See below how to link to them.

There is a directory named `_data` that contains meta data for the left side menu, see the menu section below for details.

## A page

One file corresponds to one page.

The name of the file is used in the url, use names that are descriptive and easy to understand. Use only characters, numbers, dash and underscore in the name. The full path from the root of the repository directory forms the url, for instance would the file `docs/development/howto.md` be rendered for the url `/docs/development/howto/`.

Files named `index.md` will be rendered with the url based on the directory it is located in, instead of its name, and can be used for overview pages for instance. The `index.md` file in `docs` directory is rendered as the first page of the
repo documentation. As an example the file `docs/development/index.md` would be rendered for the url `/docs/development/`.

### Meta data

All markdown files must have the following lines at the top

```
---
title: Some title
page_id: unique_id
---
```

The `title` will be displayed in the green band at the top of the page when rendered on the web. The `page_id` must be unique within the repository and is used to configure the menu.

### Headings

Use heading 2 (`##`) and up, heading one is used to display the title.

### Images

Put your image files in the image directory. Display an image using

```
![my alt text](/docs/images/my_image.png)
```

The alt text is required, it is used as support for disabled readers, search engines and other tools. Use a text that describes the contents of the image.

### Links

The genereal format for a link is
```
[this is a link](https://my.url)
```

You can use the file name of a mark down file in a link
```
[this is another link](/docs/my/nice/file.md)
```

Or relative links
```
[other page in the same directory](nice_page.md)
```

Some examples:

| destination                                                                                                                     | markdown                                                                                                                 |
|---------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------|
| The file `docs/my_page1/index.md`                                                                                               | `[text](/docs/my_page1/index.md)`                                                                                        |
| The file `docs/my_page2.md`                                                                                                     | `[text](/docs/my_page2.md)`                                                                                              |
| A page on the Bitcraze web                                                                                                      | `[tutorial](https://www.bitcraze.io/documentation/tutorials/getting-started-with-crazyflie-2-x/)`                        |
| A page in a different repo doc                                                                                                  | `[Flashing](https://www.bitcraze.io/documentation/repository/crazyflie-firmware/master/building-and-flashing/flashing/)` |
| An external repo on github                                                                                                      | `[repository](https://github.com/adam-p/markdown-here)`                                                                  |
| A source file in the same repo. Always link to master on github, it will be converted to the correct tag when the docs is built | `[estimator.h](https://github.com/bitcraze/crazyflie-firmware/blob/master/src/modules/interface/estimator.h)`            |
| A source file in a different Bitcraze repo on github. Link to a specific version (tag)                                          | `[commander.py](https://github.com/bitcraze/crazyflie-lib-python/blob/0.1.14.2/cflib/crazyflie/commander.py)`            |
| Documentation in a different Bitcraze repo.                                                                                     | `[firmware documentation](https://www.bitcraze.io/documentation/repository/crazyflie-firmware/master/)`                  |
| An external web site                                                                                                            | `[quadcopter](https://en.wikipedia.org/wiki/Quadcopter)`                                                                 |
| A header in the same file. The header element id is generated from the title (lower case and replace space with dash)           | `[link to Other section](#other-section)`                                                                                |

### Diagrams

[Ditaa (DIagrams Through Ascii Art)](http://ditaa.sourceforge.net) generates images from ascii art, it is convienient to use for simple diagrams or protocol
descriptions. Read the [ditaa documentation](http://ditaa.sourceforge.net/#usage) for a description of the supported features.

The ditaa markup must be enclosed in liquid tags. The alt text is required since the diagram is rendered as an image, it is used as
support for disabled readers, search engines and other tools. Use a text that describes what the diagram illustrates.

```
{% raw %}
{% ditaa --alt "Example diagram" %}
/-------\        +---------+
|       |   +--->| cGRE    |
|   A   |   |    | diagram |
|       |---+    |         |
\-------/        +---------+
{% endditaa %}
{% endraw %}
```
and will be rendered like this

{% ditaa --alt "Example diagram" %}
/-------\        +---------+
|       |   +--->| cGRE    |
|   A   |   |    | diagram |
|       |---+    |         |
\-------/        +---------+
{% endditaa %}

### Math

It is possible to use [LaTex](https://www.latex-project.org/) to format math expressions. Enclose the LaTex code in '$$', like this
```
{% raw %}
$$\lim_{h\to 0}\frac{f(x+h)-f(x)}{h}$$
{% endraw %}
```

and it will render like this

$$\lim_{h\to 0}\frac{f(x+h)-f(x)}{h}$$

Note that LaTex is not rendered when viewing a doc page on github.

### Redirects

When a page is moved and the url changes, it is possible to add a redirect from the old url to the new one using the
`redirects` directive in the meta data. There might be external links pointing at the old url and by adding
a redirect, those will continue to work.

Suppose we have two pages at `/fancy_section/my_page/` and `/fancy_section/other_page/`, that is the files `my_page.md` and `other_page.md` are located in `/docs/fancy_section`.

We realize that the contents of the pages could be merged into one page, and that it would fit better in `/other_section/` instead.

We create a new file, `better_page.md` in `/docs/other_section` and merge the contents of the old pages. To
create the redirects, add the following meta data

```
---
title: Better page
page_id: better_id
redirects:
  - /fancy_section/my_page/
  - /fancy_section/other_page/
---
```

The old files can be deleted, and if someone tries to access one of the old urls, the browser will be redirected to the new page.

**Note:** The development server does not support redirects at the moment.

## Development server

To make it easier to see what the documentation will look like on the web, it is possible to run a local web server with the documentation
you are writing. It uses [docker](https://www.docker.com/) and [the Toolbelt](https://github.com/bitcraze/toolbelt) and you must install them first.

To start a server, go to a terminal window and make sure the working directory is the root of the repository you are working with. Run
```
tb docs
```
and head to a web browser and type `localhost/docs`.

If you don't want to use port 80 (default), or your OS doesn't allow it (linux for instance) you can use some other port (for example 8080)
```
tb docs 8080
````
Surf to `localhost:8080/docs` in your browser.

The server automatically regenerates the html when a markdown file is modified, you only have to reload the page in your web browser.
There are some cases that are not handled though, and if you make changes to the menu for instance, you probably have to restart the server to get it all right.

**Note**: the styling in the development server is not identical to the Bitcraze website but should give a rough idea of the end result.

## The menu

Repository pages has a menu for navigation on the left side. The menu has two levels and is defined in `docs/_data/menu.yml`, a page has to
be added to the menu file to become visible in the menu.

Example:

````
- page_id: a_page
- title: menu heading
  subs:
    - {page_id: another_page}
    - {page_id: yet_a_page}
```

The pages to link to are defined by the `page_id` in the page meta data.

It is possible to link to any page in the tree, but please keep a one-to-one mapping of the structure of the menu tree and the file tree.


## URLs and links explained

The internal urls in the markdown files are the same as in the development server (without the protocol part), but will be different on
the Bitcraze webserver. The reason is that on the web server we have to squeeze in documentation from multiple repositores as well as
different versions. During the publishing process, the urls will be modified to work with the rest of the web content, but you don't have
to care about this, it is handled by the build server and it will update all links in the documentation.

An example from the [crazyflie-firmware repository docs](https://github.com/bitcraze/crazyflie-firmware/tree/master/docs) :

The file `docs/building-and-flashing/build_instructions.md` can be linked to from other pages using `/building-and-flashing/build_instructions/`.
On the web server it will have the url `https://www.bitcraze.io/documentation/repository/crazyflie-firmware/master/building-and-flashing/build_instructions/`.
Whenever we release a new version of a repository, we freeze the documentation and pulblish this version along with the latest (master)
on the web. The url to the same file for version 2020.04 will be `https://www.bitcraze.io/documentation/repository/crazyflie-firmware/2020.04/building-and-flashing/build_instructions/`

### Links to files in github

Links to files in github will be modified to point at the appropriate version (tag) in github.

Suppose we have a link in a markdown file
`[estimator.h](https://github.com/bitcraze/crazyflie-firmware/blob/master/src/modules/interface/estimator.h)`.
In the master flavour of the documentation it will still point at
`https://github.com/bitcraze/crazyflie-firmware/blob/master/src/modules/interface/estimator.h`,
but in the 2020.04 version of the documentation it will be modified to point at
`https://github.com/bitcraze/crazyflie-firmware/blob/2020.04/src/modules/interface/estimator.h`.

The reason for this functionality is to keep links in older documentation valid. A file may move or be deleted, but by pointing at the
correct version of the repository it will still work in the future. If you link to a file in the git repo always use the master branch, the conversion to tags is done by the build server.

## Gitgub compatibility

Most of the content of the repository documentation is compatible with how github renders .md files and they should look fairly OK on the web.
Images will be viewed and links will work, while some other github functionality such as links to issues, will not.

The metadata is displayed at the top of pages as a table on github.

## Publishing of documentation on the web

A modification of the repo documentation must be published on the Bitcraze web to be available. We publish the web "now and then", but
try to keep track of modifications to publish when needed. It might take a day or two from when a pull request is accepted
until the documentation is published.
