---
layout: page
title: Bitcraze Open Source Philosophy
---
## Our Purpose: Enabling Research, Innovation & Education
At Bitcraze, we believe that meaningful progress in robotics comes when tools are open, flexible and community-driven. Our platform, the Crazyflie<sup>®</sup> ecosystem, is built to allow researchers, educators and innovators to see under the hood, modify, extend, and share. As we state on our website: “The Crazyflie eco system is an open development platform consisting of semi-open hardware and open source firmware/software.” 

We release both hardware designs and software code under open licenses (see below) so you don’t just use the system, but own it, adapt it, and contribute back.

This approach purposefully targets three key communities:

- Researchers who need transparency, reproducibility, and control.
- Educators and students who benefit from platforms they can dissect and rebuild.
- Innovators and product-builders who want to prototype, branch off and scale.

## What “Open” Means for Us
Open means multiple things, and we try to live up to each:

- Semi-open hardware: Our board designs, expansion decks, schematics and component choices are published so you can inspect and modify.
- Open software: Firmware, client libraries, and tools are available from our GitHub. Our repository overview lists dozens of them (firmware for STM32, NRF, clients in Python, mobile, etc) 
- Open tooling: We build using open-source tools and dependencies so there are no hidden black boxes.
- Open community & contribution: You can raise issues, propose changes, submit pull requests. As we say: “Contribute your work – Open source is all about sharing and caring!” 
- Open knowledge: Documentation, tutorials and example projects are published so others can replicate, extend, and build upon.

## Why We Aren’t “Fully Free” in Every Sense
While we embrace openness, there are practical realities and trade-offs, so we make conscious choices:

- Safety and liability: Our products are research tools, not consumer goods. We need to ensure users understand the experimental nature, which impacts how we document and support them.
- Commercial sustainability: To maintain hardware production, support, community infrastructure and future development, we operate as a company. Openness doesn’t mean operating at zero cost or with zero constraints.
- Clear boundaries: Some parts (for example product packaging, brand marks, or certain modules) remain under stricter control. This helps protect the integrity of the ecosystem and avoids fragmentation or brand confusion.
- Licensing pragmatism: We pick licenses that enable openness but also minimize risk for you and us. For example, some code may be under MIT or BSD-style permissive licenses; some hardware may use open-hardware licences; trademarks remain controlled. Our “License” page states:
    “The license for the content, code and samples on this site is stated in the LICENSE.md file. The license for each project is documented in the source code in the repositories on GitHub.” 

Thus, “open” for us doesn’t mean “no rules at all”. It means “transparent, collaborative and enabling”.

## Licensing Overview & What You Should Know
Here’s a summary of how we apply licensing, and what it means for you:

| Component | Typical license model | What it means for you |
|---|---|---|
| Website content & sample code | LICENSE.md (often MIT/BSD-style) | You can reuse it, adapt it, reference it (with attribution) as per the license. |
| Firmware / client libraries | Open source (check each GitHub repo for license header) | You can modify, build, use for research and commercial prototyping (check specific terms). |
| Hardware reference designs | Open-hardware friendly licences (see repo) | You can inspect, modify board designs, build your own variants. Again, verify license. |
| Trademarks & branding (Bitcraze, Crazyflie) | Retained by Bitcraze AB | You may not use the brands/logos in a way that implies endorsement or causes confusion. |
| Community / contributions | Contributor license or terms in repo | If you contribute, your contribution is typically covered by the repo’s license and you may grant us rights to incorporate it. |

Key advice for users:

- Always check the LICENSE file of the specific repository or component you are using.
- If you are commercializing a product based on the platform, check the Trademark use and branding.
- If you contribute code or hardware designs back, respect the coding/style guidelines, issue/pull request process, and ensure you understand the licence. 
- If you fork or branch substantially, document your modifications and respect existing community norms of attribution and transparency.

## How We Manage Evolution & Compatibility
In a fast-moving ecosystem like ours, change is inevitable, yet we want users to build with confidence.

- We maintain versioning of key APIs (e.g., communication protocol, deck interface) so downstream users aren’t broken by minor updates. 
- We clearly mark deprecated features and provide migration guides.
- We publish release notes, maintain community discussion channels, and encourage you to test what you build.
- We give you pathways to fork, extend or integrate into other frameworks (e.g., ROS2, Rust libraries) while preserving interoperability. 

## What This Means for Research, Education & Innovation
### For Researchers
- You have full access to internals, both for hardware and software, to validate, replicate or extend experiments.
- You can build custom decks, instrument sensors, integrate with simulation, and modify firmware.
- The ecosystem is already used in peer-reviewed research, so you’re not starting from a closed black box. 

### For Educators & Students
- The open nature means you can use the platform as a teaching tool: break it apart, rebuild it, experiment with control, autonomy, swarms.
- The documentation and “Getting started” paths guide newbies from scratch.

### For Innovators & Developers
- You can prototype commercial or custom systems built on top of the Crazyflie ecosystem, provided you respect licensing and branding.
- You benefit from a vibrant community: modules, decks, firmware updates, partner integrations.
- Because we are open, you reduce lock-in risk and your work remains portable, modifiable, and future-proof.

### How You Can Engage & Contribute
Openness only works if the community participates. Here’s how you can help:

- Browse our Contribution Support page: raise issues, file pull requests. 
- Share your project. Built a new deck? Found a firmware bug? Write a blog post, publish your code, cite your version.
- Use our hardware/software as a building block, not just a finished product. Then tell us what you did.
- Respect others: when you incorporate community work, attribute appropriately, follow license terms, and contribute improvements back when possible.

## Our Promise to You
- We will keep releasing hardware and software under openly disclosed licences.
- We will publish definitions, schemas, and APIs openly and strive to keep backward compatibility where feasible.
- We will maintain documentation, tutorials and example code to help you onboard and get productive.
- We will operate transparently: you will know what is open, what is controlled, and why.

## Summary
You’re getting a platform where you can look inside, modify, build upon, and share. We don’t pretend you can do anything without rules, but we do commit to being as open, collaborative and enabling as possible. If you’re a researcher, educator or innovator who values clarity, control and community, you’re in the right place.