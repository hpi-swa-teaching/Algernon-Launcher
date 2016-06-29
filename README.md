# Algernon-Launcher [![GitHub release](https://img.shields.io/github/release/HPI-SWA-Teaching/SWT16-Project-06.svg?label=small release&maxAge=0)](https://github.com/HPI-SWA-Teaching/SWT16-Project-06/releases/latest) [![Github All Releases](https://img.shields.io/github/downloads/HPI-SWA-Teaching/SWT16-Project-06/total.svg?maxAge=0)](https://github.com/HPI-SWA-Teaching/SWT16-Project-06/releases) [![Build Status](https://img.shields.io/travis/HPI-SWA-Teaching/SWT16-Project-06/master.svg?maxAge=0)](https://travis-ci.org/HPI-SWA-Teaching/SWT16-Project-06) [![Coverage Status](https://img.shields.io/coveralls/HPI-SWA-Teaching/SWT16-Project-06/master.svg?maxAge=0)](https://coveralls.io/github/HPI-SWA-Teaching/SWT16-Project-06?branch=master)

<p align="center">
  <img src="https://cloud.githubusercontent.com/assets/6453623/16036676/47e23582-321d-11e6-9032-bcb96873d348.png" width="465" alt="Algernon"/>
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

  Windows and Linux:
  ```
  Alt + Space
  ```
  Mac:
  ```
  Cmd + Shift + Space
  ```
You can always customize the keyboard shortcut :
  ```
  Tools > Preferences > Algernon
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
- Print and evaluate Smalltalk expressions 
- Action verbs for filtering and quick access (e.g. `run SomeTest` will only search for tests and set a default action)
- full text search in classe

For explanations regarding the usage of the features check out the wiki.


## Credits


Credits to Erik Hinterbichler and Joey Hagedorn, [the original creators of Algernon.](http://erikhinterbichler.com/apps/algernon/)
