# Algernon Launcher 
[![GitHub release](https://img.shields.io/github/release/hpi-swa-teaching/Algernon-Launcher.svg?label=small%20release&maxAge=0)](https://github.com/hpi-swa-teaching/Algernon-Launcher/releases/latest)
[![Github All Releases](https://img.shields.io/github/downloads/hpi-swa-teaching/Algernon-Launcher/total.svg?maxAge=0)](https://github.com/hpi-swa-teaching/Algernon-Launcher/releases)
![smalltalkCI](https://github.com/hpi-swa-teaching/Algernon-Launcher/workflows/smalltalkCI/badge.svg) 
Master: [![Coverage Master](https://coveralls.io/repos/github/hpi-swa-teaching/Algernon-Launcher/badge.svg?branch=master)](https://coveralls.io/github/hpi-swa-teaching/Algernon-Launcher?branch=master)
Development: [![Coverage Development](https://coveralls.io/repos/github/hpi-swa-teaching/Algernon-Launcher/badge.svg?branch=development)](https://coveralls.io/github/hpi-swa-teaching/Algernon-Launcher?branch=development)

<p align="center">
  <img src="https://user-images.githubusercontent.com/44369294/89326002-e93a5800-d689-11ea-89f0-d685e7a4f1e9.png" width="465" alt="Algernon"/>
</p>

Algernon is a productivity tool for Squeak programmers; your personal assistant for Squeak. Algernon aims to make programming in Squeak faster and more keyboard centric. It provides lightning quick access to the core functionalities (classes, methods, morphs, tests, repositories ...) and even gives you a quick way to evaluate Smalltalk expressions.

## Installation
Follow our [setup guide](https://github.com/hpi-swa-teaching/Algernon-Launcher/wiki/Setup-Guide) to install Algernon.

The latest versions (above 3.0.0) only support squeak versions 5.3+.

## Usage

Algernon allows for keyboard only interaction - no need to use your mouse!

| Control          | Action            |
|------------------|-------------------|
| Doubleclick ctrl | Show Algernon     |
| Esc              | Hide Algernon     |
| Arrow up         | Navigate up       |
| Arrow down       | Navigate down     |
| Tab              | Navigate in       |
| Shift + Tab      | Navigate out      |
| Enter            | Run selected item |

*Important Notice:* Please be aware that using Algernon for the first time might be slow. The first query triggers the indexing that is used for searching objects. After a few seconds delay in the first query, Algernon should run fast as expected.


## Features

- Search using fuzzy matching
- Search and open categories, classes and methods
- Explore and inspect classes and methods
- Run tests
- Open and save repositories
- Search preferences
- Search morphs
- Search global variables
- Print and evaluate Smalltalk expressions 
- Action verbs for filtering and quick access (e.g. `run SomeTest` will only search for tests and set a default action)
- full text search in classes

For explanations regarding the usage of the features check out the [wiki](https://github.com/hpi-swa-teaching/Algernon-Launcher/wiki).


## CI Pipeline
[GitHub Actions](https://github.com/hpi-swa-teaching/Algernon-Launcher/actions) are executed on all pushed code to the repository. [Smalltalk CI](https://github.com/hpi-swa/setup-smalltalkCI) checks run for different OS and displays the the test results as badges to each branch.

## Test Coverage
Use the Test Runner Tool in your Squeak Image and select all *AlgernonTests*. Now you can run the test coverage for all *Algernon* methods and check what methods might not be tested yet.


## Credits


*  [Ann Katrin Kuessner](https://github.com/annkatrinkuessner)
*  [Ben Bals](https://github.com/BenBals)
*  [Benedikt Weber](https://github.com/bewee)
*  [Franz Sauerwald](https://github.com/FranzSw)
*  [Jannis Rosenbaum](https://github.com/sinnaj-r)
*  [Jonathan Schneider](https://github.com/jonaschn)
*  [Kai Robert Kirsten](https://github.com/robertkirsten)
*  [Kay Erik Jenß](https://github.com/kej-jay)
*  [Laura Meister](https://github.com/dieknolle3333)
*  [Louis Kirsch](https://github.com/timediv)
*  [Niklas Mohrin](https://github.com/niklasmohrin)
*  [Nils Lissner](https://github.com/TheGrayStone)
*  [Oliver Heß](https://github.com/Olliwehr)
*  [Philip Weidenfeller](https://github.com/phlprcks)
*  [Pius Ladenburger](https://github.com/GittiHab)
*  [Tobias Dürschmid](https://github.com/tobiduer)

Credits to Erik Hinterbichler and Joey Hagedorn, [the original creators of Algernon.](http://erikhinterbichler.com/apps/algernon/)
