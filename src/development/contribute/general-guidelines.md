---
layout: page
title: General guidelines for code contributions
page_id: general-guidelines-for-code-contributions
---

Code contributions are of great value to us and we are very grateful for the work you put in. Thanks!

The codebase is a shared resource that is used by many users, benefiting from the possibility
of reading and modifying the code. It is also something that we hope will be used for a long
time and that will evolve, changed and be added to over the coming years. To make this possible,
the maintainers keep the code clean, tidy, bug free and so on, and contributions must
be of decent quality to be useful. We do not want be too picky and might fix one or two minor
problems while merging, but if the quality of a contribution is too low it will simply take
too much of our time to be worth handling.

We do appreciate your contribution and we want to help you to get it right! If you have any questions
of how to contribute, what the best solution is to a problem might be, where to
add the functionality and so on - just ask us. Open an issue on github, ask in the forum, or send us an email, we
will try to help you as much as we can. The Crazyflie is a complex system and there are many things to take
into account, don't be afraid to ask for help!

## Detailed Guidelines

To help you create good pull requests, please try to follow these guidelines

1. Code contributions to the project are handled through pull requests, you can read more about how
it works in [github's documentation](https://help.github.com/articles/about-pull-requests/). Pull requests are public
and anyone can see what code changes you propose. When a pull request is received, one of the
maintainers will look at it and evaluate if it can be merged to the codebase, if it requires
changes, or if it should be rejected. If the code is deemed to be working, is useful to
the community, and is good enough it will be merged.

1. The title of the pull request will be used in the release notes, try to make it as descriptive as
possible.

1. Add a short description to the pull request that tells other users what it contains. What is the change in functionality?
What is the purpose? Maybe describe how it works? Anything that makes it easy for other users
(and maintainers) to understand what it is and how it works.

1. New functionality should be useful for other users and somewhat generic. Since the codebase
is used by many users, additions must not be too specific. Unused functionality tend
to create complexity and becomes costly in the long run.

1. Avoid noise in your pull request. Do not include unnecessary changes that are not part of
the pull request. It should be possible to merge the pull request as is, without
modifications.

1. If the repository you are contributing to contains automated tests, please try to
add tests for your code if possible. All code is currently not tested, but we are trying
to increase the coverage where possible.

1. There is documentation in each repository, please consider to add or update the documentation
for the changes you make. See the [Repository documentation guidelines](../repo-doc-guidelines)
for more information.

1. Keep you pull request fairly small, it should ideally only contain one feature.
Large pull requests are very hard to understand or test, and are more likely to be
rejected. In most cases more complex functionality can be divided into smaller pieces that
add value. One way to figure out if a feature is too complex is to try to describe it
with one sentence, if you have to use the word "and" you should probably consider to split
it up in sub-features and use multiple pull requests.
There are no hard limits, but one pull request should probably only change a few files.

1. If your functionality requires multiple pull requests it might be useful to
use a github issue to tie them together and help other users understand the bigger
picture. This is also a good place for discussions of how to split a feature up into
smaller sub-features. Otherwise, there is no need to add an issue first.

1. Use recent branch points for your pull request. If your pull request is based on an old
commit it is more likely that there will be merge conflicts or that other code around has
changed, this makes it much harder for the maintainers to understand what has changed.

1. Write code for humans. The compiler will understand any code that is syntactically correct,
but humans may not. Obviously, your code must work and implement some functionality but also keep
in mind to make it easy for humans to understand it.
    * Use descriptive names for variables and functions to help a reader understand what is going on.
    * Keep functions short and with one clear purpose
    * If you feel you have to describe your code with a comment, it is maybe too complex and
    would benefit from being split up into functions with descriptive names?
    * Do not do premature optimization. The compiler is usually very good at optimizing,
    focus on writing clean code instead.
    * Limit the scope. Keep variables, functions and other information at a limited scope to
    indicate where it is supposed to be used, it also reduces the possibility of mistakes.
    * Make it easy to use your code in the right way. Design your code to help other
    programmers understand how your code is supposed to be used.
    * Some code constructs may be short and compact, but possibly not easy to understand.
    Compact code is not faster to execute in most cases, but harder to understand.

1. Write robust code. Make sure your code also works if something unexpected happens.

1. Use clean commits in the pull request. It is fine to use multiple commits, it may help
the reader to understand what has changed, but only commit one change at
a time. If you want to clean up existing code for instance, it is probably better to do
that in a separate commit instead of mixing it with new functionality.

1. Try to keep the styling. We are not super strict on styling, but try to write code
that looks similar to the existing code. When in doubt follow the [coding standard guidlines.](coding-standards.md)

1. Write code that can be modified and maintained. Keep in mind that the code will
live for a long time and that other people will read and modify your contribution.

1. Leave the code in better shape than you found it. Tidy up in the area where
you modify or add code.

