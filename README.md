# Toy Robot
[![Codeship Status for leesheppard/toy_robot](https://app.codeship.com/projects/86ec4020-3a53-0135-dc21-3e90d98dff2a/status?branch=master)](https://app.codeship.com/projects/228576) 
[![GitHub version](https://badge.fury.io/gh/leesheppard%2Ftoy_robot.svg)](https://badge.fury.io/gh/leesheppard%2Ftoy_robot)
[![Dependency Status](https://gemnasium.com/badges/github.com/leesheppard/toy_robot.svg)](https://gemnasium.com/github.com/leesheppard/toy_robot)

A simulation of a toy robot moving on a square tabletop, of dimensions 5 units x 5 units. The original exercise created by [Jon Eaves](https://joneaves.wordpress.com/2014/07/21/toy-robot-coding-test/)

* There are no other obstructions on the table surface.
* The robot is free to roam around the surface of the table, but must be prevented from falling to destruction. Any movement that would result in the robot falling from the table must be prevented, however further valid movement commands must still
be allowed.


### Requirements

This project was written and tested using ruby `2.4.0`.

### Installation

To install the system locally:

	$ git clone git@github.com:leesheppard/toy_robot.git
	$ cd toy_robot

Install Bundler from rubygems (if you have not already):

	$ gem install bundler

Now run: 

	$ bundle install

This will install the required dependencies specified in `toy_robot.gemspec`

### Usage

TODO: Write usage instructions here

## Specification

* The application is a simulation of a toy robot moving on a square tabletop, of dimensions 5 units x 5 units. 
* There are no other obstructions on the table surface. 
* The robot is free to roam around the surface of the table. 
* Any movement that would result in the robot falling from the table is prevented, however further valid movement commands are still allowed.

The application reads a file using a name passed in the command line, the following commands are valid:

`PLACE X,Y,F`  
`MOVE`  
`LEFT`  
`RIGHT`  
`REPORT`  

Here's some rules for these commands:

* `PLACE` will put the toy robot on the table in position `X,Y` and facing `NORTH`, `SOUTH`, `EAST` or `WEST`.
* The origin (`0,0`) is the `SOUTH WEST` most corner.
* All commands are ignored until a valid `PLACE` is made.
* `MOVE` will move the toy robot one unit forward in the direction it is currently facing.
* `LEFT` and `RIGHT` rotates the robot 90 degrees in the specified direction without changing the position of the robot.
* `REPORT` announces the `X,Y` and `F` of the robot.

The file is assumed to have `ASCII encoding`. It is assumed that the `PLACE` command has only one space, that is `PLACE 1, 2, NORTH` is an invalid command. All commands must be in uppercase, all lower and mixed case commands will be ignored.

### Contact 

[![Hello](https://img.shields.io/badge/Hello-%40leesheppard-blue.svg)](https://twitter.com/leesheppard)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/leesheppard/toy_robot.