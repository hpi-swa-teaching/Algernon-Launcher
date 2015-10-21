Algernon-Launcher [![Build Status](https://travis-ci.org/HPI-SWA-Teaching/Algernon-Launcher.svg)](https://travis-ci.org/HPI-SWA-Teaching/Algernon-Launcher)
===================

<p align="center">
  <img src="https://cloud.githubusercontent.com/assets/7422050/9015196/964cdde0-37c7-11e5-8ef6-f9baef559391.png" alt="Algernon"/>
</p>

Algernon is a productivity tool for Squeak programmers; your personal assistant for Squeak. Algernon aims to make programming in Squeak faster and more keyboard centric. It provides lightning quick access to the core functionalities (classes, methods, morphs, tests, repositories ...) and even gives you a quick way to evaluate Smalltalk expressions.

## Installation
1. Make sure you have [metacello-work](https://github.com/dalehenrich/metacello-work) installed.

2. Load the project by running the following in your workspace:
  ```smalltalk
  Metacello new
    baseline: 'Algernon';
    repository: 'github://HPI-SWA-Teaching/Algernon-Launcher:master/packages';
    onConflict: [:ex | ex allow];
    load
  ```

3. Activate the panel in the preferences:
  ```
  Tools > Preferences > Algernon
  ```

4. Now you can toggle the Algernon panel using:
  ```
  Alt + Space
  ```

## Usage

| Control     | Action            |
|-------------|-------------------|
| Alt + Space | Show Algernon     |
| Esc         | Hide Algernon     |
| Arrow up    | Navigate up       |
| Arrow down  | Navigate down     |
| Arrow right | Navigate in       |
| Arrow left  | Navigate out      |
| Enter       | Run selected item |

## Features

- Search using fuzzy matching
- Search and open categories, classes and methods
- Explore and inspect classes and methods
- Run tests
- Open and save repositories
- Search preferences
- Search morphs
- Search global variables
- Print and evaluate Smalltalk expressions (e.g. enter `= 2*3`)
- Action verbs for filtering and quick access (e.g. `run SomeTest` will only search for tests and set a default action)

## Credits

Credits to Erik Hinterbichler and Joey Hagedorn, [the original creators of Algernon.](http://erikhinterbichler.com/apps/algernon/)
