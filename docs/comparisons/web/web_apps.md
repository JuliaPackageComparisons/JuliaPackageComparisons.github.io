+++
title = "Web Apps"
+++

# Web Apps

\toc

## Introduction
A web app is an interactive website. There are several Julia packages that help in the creation of web apps that run Julia as the backend language.

## Overview
The most popular by far is [Genie.jl](#geniejl). This is the recommended package for most users when it comes to building web apps.

{{star_history Genie Oxygen Bonito Mongoose}}

## Packages

### Genie.jl
{{badge Genie}}
> 🧞The highly productive Julia web framework

The most popular web app framework is [Genie.jl](https://github.com/GenieFramework/Genie.jl). As of September 2023 it has more than 2000 stars, making it one of the most starred Julia packages out there.

From the package README:

[Genie.jl](https://github.com/GenieFramework/Genie.jl) is the backbone of the Genie Framework, which provides a streamlined and efficient workflow for developing modern web applications.
It builds on Julia's strengths (high-level, high-performance, dynamic, JIT compiled), exposing a rich API and a powerful toolset for productive web development.

Genie Framework is composed of four main components:

* [Genie.jl](https://github.com/GenieFramework/Genie.jl): the server backend, providing features for routing, templating, authentication, and much more.
* [Stipple.jl](https://github.com/GenieFramework/Stipple.jl): a package for building reactive UIs with a simple and powerful low-code API in pure Julia.
* [Genie Builder](https://learn.genieframework.com/docs/genie-builder/quick-start): a VSCode plugin for building UIs visually in a drag-and-drop editor.
* [SearchLight.jl](https://github.com/GenieFramework/SearchLight.jl): a complete ORM solution, enabling easy database integration without writing SQL queries.

### Oxygen.jl
{{badge Oxygen}}
> 💨 A breath of fresh air for programming web apps in Julia

From the package README:

A micro-framework built on top of the HTTP.jl library. Breathe easy knowing you can quickly spin up a web server with abstractions you're already familiar with.

Features:

* Straightforward routing
* Real-time Metrics Dashboard
* Auto-generated swagger documentation
* Out-of-the-box JSON serialization & deserialization (customizable)
* Type definition support for path parameters
* Request Extractors
* Application Context
* Multiple Instance Support
* Multithreading support
* Websockets, Streaming, and Server-Sent Events
* Cron Scheduling (on endpoints & functions)
* Middleware chaining (at the application, router, and route levels)
* Static & Dynamic file hosting
* Hot reloads with Revise.jl
* Templating Support
* Plotting Support
* Protocol Buffer Support
* Route tagging
* Repeat tasks


### Bonito.jl
{{badge Bonito}}
> Serving JS to the browser

[Bonito.jl](https://github.com/SimonDanisch/Bonito.jl) is mainly developed by [SimonDanisch](https://github.com/SimonDanisch) who is also the main contributer to [Makie.jl](https://github.com/MakieOrg/Makie.jl). 

From the package README:

Easy way of building interactive applications from Julia. Uses Hyperscript to create HTML descriptions, and allows to execute Javascript & building of widgets. It also supports an offline mode, that exports your interactive app to a folder, and optionally records a statemap for all UI elements, so that a running Julia process isn't necessary anymore.

### Mongoose.jl
{{badge Mongoose}}

> Julia package to build simple web servers

From the package README:

[Mongoose.jl](https://github.com/AbrJA/Mongoose.jl) is a Julia package that provides a lightweight and efficient interface for building HTTP servers and web applications.
It leverages the [Mongoose C](https://github.com/cesanta/mongoose) library to deliver fast, embeddable web server capabilities directly from Julia code.
The package is designed for simplicity and ease of use. With Mongoose.jl, users can define routes, handle HTTP requests, and serve dynamic or static content with minimal setup.

## Other
It is worth mentioning the github organization [JuliaWeb](https://github.com/JuliaWeb). JuliaWeb hosts a number of repositories which implement the tools needed to build web apps.

If you have used or developed Julia packages in this domain, we would love your help! Please visit the ["Contributing" section](https://github.com/JuliaPackageComparisons/JuliaPackageComparisons.github.io#contributing) of the [repository that hosts this website](https://github.com/JuliaPackageComparisons/JuliaPackageComparisons.github.io) for information on contributions.
