---
layout: page-fulltext
title: General guidelines for code contributions
page_id: general-guidelines-for-code-contributions
---

**Code contributions are of great value to us and we are very grateful for the work you put in. Thanks!**

The codebase is a shared resource that many people use, read and modify, and we want it to live
and evolve for many years. Reviewing, testing and maintaining a contribution takes our time. To be
merged, a contribution should be worth more to the project than the time it takes to review it.
The guidelines below help you get there.

The Crazyflie<sup>®</sup> ecosystem is complex, so don't be afraid to ask for help. Open an issue on GitHub,
ask in [Discussions](https://discussions.bitcraze.io), or email us at [support@bitcraze.io](mailto:support@bitcraze.io).

## Before you start

1. **Agree on the approach before you write code.** Many issues need design decisions that we make
as a team. Comment on the issue describing how you want to solve it, and wait for a maintainer to
agree before you open a pull request. If there is no issue for your change, open one first. Fixes that
don’t involve any design decision, such as typos or documentation corrections, can go straight to a pull
request.

1. **New functionality should be useful for other users and somewhat generic.** The codebase is used
by many people, so additions must not be too specific. Unused functionality adds complexity and
becomes costly in the long run.

1. **Keep your pull request small, ideally one feature.** Large pull requests are hard to understand
and test, and are more likely to be rejected. One way to figure out if a feature is too complex is to try
to describe it with one sentence. If you have to use the word "and" you should probably split it into
sub-features and use multiple pull requests.  Use the issue to tie them together and show the bigger
picture.

## Writing the code

{: start="4"}
1. **Write code for humans.** The compiler understands any syntactically correct code, but people
may not. Keep in mind that your code will live for a long time and that others will read and modify it.
    * Use descriptive names for variables and functions.
    * Keep functions short, with one clear purpose. If code needs a comment to be understood,
    consider splitting it into well-named functions.
    * Limit the scope of variables and functions to where they are used.
    * Make your code easy to use the right way. Design your code to help other programmers understand how your code is supposed to be used.
    * Prefer clear code over compact code, and avoid premature optimization.
    * Make sure your code also works when something unexpected happens.
    * Leave the code in better shape than you found it: tidy up where you add or change code.

1. **Keep the existing style.** We are not very strict, but your code should look like the code
around it. When in doubt, follow the [coding standard guidelines](coding-standards.md).

1. **Add automated tests when they add value.** Not every change needs a test, but logic that can be
tested without hardware, usually should have one. Tests must check real behavior, not just pass. If you
are not sure, feel free to ask and we will let you know in the review.

1. **Update the documentation.** Each repository has documentation; add or update it for your
changes. See the [repository documentation guidelines](../repo-doc-guidelines).

1. **Avoid noise.** Don't include changes that aren't part of the pull request, such as reformatting
or renaming unrelated code. It should be possible to merge the pull request as it is.

1. **You are responsible for code written.** Using AI tools is fine, but you must understand
every change you submit and be able to explain it and answer reviewers' questions in your own words.
Read and review all AI-generated code yourself before you ask maintainers to review it. Don't list AI
tools as co-authors; you are the author.

## Submitting the pull request

{: start="10"}
1. **Use a recent branch point.** A pull request based on an old commit is more likely to have merge
conflicts, and makes it harder to see what has changed.

1. **Use clean commits with clear messages.** Several commits are fine, but each commit should
contain one change; for example, keep a cleanup of existing code separate from new functionality.
Start the message with a short summary of what changed, followed by why if it isn't obvious. Don't
add sign-off lines or lines that tools add automatically.

1. **Write a descriptive title.** The title is used in the release notes.

1. **Write a clear description.** Other users and maintainers should understand the pull
request from the description alone. Include:
    * the motivation: what problem it solves and why
    * how it works
    * a link to the issue where the approach was agreed (see point 1)
    * how you tested it (see point 14)
    * Keep it short and to the point.

    We strongly recommend writing the description yourself: putting the change into your own words
    is a good self-review. Using tools for translation or copy-editing is fine. If you used AI tools,
    you are welcome to mention which ones and for what.

1. **Test on hardware and describe how.** Passing CI or compiling the firmware is not enough for
changes that affect behavior on our platforms. In the description, state:
    * the OS, platform(s), decks and firmware or library versions you used
    * what hardware tests you ran and what you observed

## After submitting

{: start="15"}
1. **Stay involved in the review.** A maintainer will evaluate whether your pull request can be
merged, needs changes, or should be closed. Respond to review comments and requested changes. Pull
requests without activity for a long time may be closed.

1. **Pull requests that don't follow these guidelines may be converted to draft or closed.** This
isn't personal; it lets us spend review time where it counts. In some cases, for example when a change
affects the overall design, we may choose to implement a solution ourselves.