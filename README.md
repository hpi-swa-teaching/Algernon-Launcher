# Algernon-Launcher [![GitHub release](https://img.shields.io/github/release/HPI-SWA-Teaching/SWT16-Project-06.svg?label=small release&maxAge=2592000)](https://github.com/HPI-SWA-Teaching/SWT16-Project-06/releases/latest) [![Github All Releases](https://img.shields.io/github/downloads/HPI-SWA-Teaching/SWT16-Project-06/total.svg?maxAge=60)](https://github.com/HPI-SWA-Teaching/SWT16-Project-06/releases) [![Build Status](https://api.travis-ci.org/HPI-SWA-Teaching/SWT16-Project-06.svg)](https://travis-ci.org/HPI-SWA-Teaching/SWT16-Project-06) 
[![Coverage Status](https://coveralls.io/repos/github/HPI-SWA-Teaching/SWT16-Project-06/badge.svg?branch=master)](https://coveralls.io/github/HPI-SWA-Teaching/SWT16-Project-06?branch=master)

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

## Hotwords
Type one of the following Action Words to filter your search and for quick access (e.g. `run SomeTest` will only search for tests and set a default action).

| Action Word | Action                                                    | Example                    |
|-------------|-----------------------------------------------------------|----------------------------|
| run         | runs testcase                                             | run AbstractMergerTests    |
| browse      | opens browser                                             | browse ALGActionWordFilter |
| printout    | generates a .html file in Resources of squeak image Folder| printout ALGAction         |
| fileout     | generates a .st file in Resources of squeak image Folder  | printout ALGAction         |
| open        | opens tool                                                | open Dependency Browser    |
| save        |                                                           |                            |
| do          | DoIt action with given argument                           |                            |
| inspect     | inspect given argument (object)                           | inspect Algernon           |
| explore     | explore given argument (opens explore window)             | explore ALGCore            |
| apropos     | display matching class comments                           | apropos anything           |
| which       | display matching class comments                           | which anything             |
| ?           | display matching class comments                           | ? anything                 |
| =           | prints result of numeric expression | =2*3| 


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

### Full Text Search in Classes

Enter a class name to search within.
Hit the right arrow key.
Enter the search term for full text search (method names and code) in that class.
Matching methods are listed.


## Credits


Credits to Erik Hinterbichler and Joey Hagedorn, [the original creators of Algernon.](http://erikhinterbichler.com/apps/algernon/)
