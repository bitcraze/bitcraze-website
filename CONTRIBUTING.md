Contributing--Website
============

👍🎉 Thanks a lot for considering contributing 🎉👍

We welcome and encourage contribution. There is many way to contribute: you can
write bug report, contribute code or documentation.
You can also go to the [bitcraze forum](https://forum.bitcraze.io) and help others.

## Reporting issues

When reporting issues the more information you can supply the better.

If it is an issue with building the website, indicate your environment like operating system and,
version of the builder docker image or of ruby.

## Improvements request and proposal

Feel free to make an issue to request a new functionality.

## Contributing code/Pull-Request

We welcome contribution, this can be done by starting a pull-request.
You can contribute by updating the site content or styling, code, or both.

### Contributing content or styling

There is a couple of basic requirement for us to merge the pull request:
 - The styling should work on reasonably modern web-browsers
 - The pull request must pass the automated test (see test section bellow)

### Contributing code

If the change is big, typically if the change span to more than one file, consider starting an issue first to discuss the improvement.
This will makes it much easier to make the change fit well into the software.

There is some basic requirement for us to merge a pull request:
 - Describe the change
 - Refer to any issues it effects
 - Separate one pull request per functionality: if you start writing "and" in the feature description consider if it could be separated in two pull requests.
 - Write a test for any new function or liquid plugin you are writing
 - The pull request must pass the automated test (see test section bellow)

In your code:
 - Make sure the coding style of your code follows the style of the file.

### Run test

In order to run the tests you can run:
```
./tools/build/build
```
