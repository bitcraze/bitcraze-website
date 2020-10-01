# The Bitcraze website [![Build Status](https://api.travis-ci.org/bitcraze/bitcraze-website.svg)](https://travis-ci.org/bitcraze/bitcraze-website)

This is the source code for the Bitcraze website. 

## Quick Start 

The content is written in markdown and html and the intention is to make it as
easy as possible to modify the code. There is an integrated development and
test environment based on Docker to reduce the amount of software required.

1. Clone this repository

        git clone https://github.com/bitcraze/bitcraze-website.git

1. Go to the root of the repository. All tools should be run from here.

        cd bitcraze-website
        
1. Download Dependencies. This will download Bootstrap and set things up.
        
        ./tools/do download_deps

1. Start the development server. The development server in Jekyll continuously 
builds the site when the source changes.

        ./tools/run-in-dev.sh
        
1. Open a Web Browser and go to http://localhost. If you are not on Linux you 
will have to use docker-machine to figure out your address.
1. Make your changes. The site will automatically rebuild when you modify a 
file, so all you have to do is to reload the page in your browser to see the 
results.
1. Make sure all tests and validations passes

        ./tools/do build

1. Commit and issue a pull request
1. Done!

## Prerequisites

To contribute you only need:

* [Docker](https://www.docker.com/)
* [Git](https://git-scm.com/) and a [GitHub](https://github.com/) account
* Any text editor

If you don't want to use docker you will need ruby on you system. We have not 
set our systems up this way but is should not be a big deal. If you do, please 
add documentation for it here.

## Technologies

You can find more information about the technologies used here

* [Jekyll](https://jekyllrb.com/) - we use Jekyll to generate static html and
css from markdown, html and scss
* [Bootstrap](http://getbootstrap.com/) - The CSS is based on Bootrstrap
* [Docker](https://www.docker.com/) - Docker is used to create a consistent 
development and test environment
* [HTML Proofer](https://github.com/gjtorikian/html-proofer)

## File Structure  

The top level directories are

* src - the source code for ths site, markdown, js, scss, templates and so on. 
This is where you need to look if you want to add or change the text or 
styling. Read the [Jekyll](https://jekyllrb.com/) documentation for an 
explanation of the file structure here.
* test - unit tests for Jekyll plugins 
* bootsrap - bootstrap is download here
* _site - this is where the generated site goes
* tools - scripts for building the site and running the server. See comments
in the scripts for documentation on how to use them.

## Tags and filters

We are aiming at writing most of the content using markdown. This makes it 
easy to add or change the content without getting lost in styling. We use 
liquid tags and filters to extend the functionality of markdown to generate 
more complex or specific HTML structures.

Documentation for tags and filters can be found in the source code for the tags
in `src/_plugins`.

## Integration with Wordpress

The Code in this repository is the base for all static content on the website. 
The blog on the other hand, is not part if this code, it is running on 
a Wordpress instance. The dynamic content is injected into the static pages 
where needed, you will find tags in the source code indicating where. For 
instance. 

        <!-- inject wp blog -->

## Using the Toolbelt

Instead of running the ```tools/do``` script you can use the [toolbelt](https://github.com/bitcraze/toolbelt).
For instance, Downloading dependencies would be 
 
        tb download_deps 

or running the validations

        tb validate
        
