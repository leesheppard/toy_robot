[![forthebadge](https://forthebadge.com/images/badges/made-with-ruby.svg)](https://forthebadge.com)
# ToyRobot
A simulation of a toy robot moving on a square tabletop, of dimensions 5 units x 5 units.
* There are no other obstructions on the table surface.
* The robot is free to roam around the surface of the table, but must be prevented from falling to destruction. Any movement that would result in the robot falling from the table must be prevented, however further valid movement commands must still
  be allowed.

[![Tests for Robot](https://github.com/leesheppard/toy_robot/actions/workflows/tests.yml/badge.svg)](https://github.com/leesheppard/toy_robot/actions/workflows/tests.yml)

Full specifications [here](#specification).

This project was written using ruby `3.3.0`. Tests are run against version `3.0` and `3.3`.

## Installation

Install the gem and add to the application's Gemfile by executing:

```bash
$ git clone https://github.com/leesheppard/toy_robot.git
$ cd toy_robot
$ bundle install
```

### Usage

```bash
$ bundle exec exe/toy_robot commands.txt
```

## Testing

Code quality and verification is tested using [RSpec](http://rspec.info/).

Run spec tests:

```bash
$ bundle exec rspec
```

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

Here are some rules for these commands:

* `PLACE` will put the toy robot on the table in position `X,Y` and facing `NORTH`, `SOUTH`, `EAST` or `WEST`.
* The origin (`0,0`) is the `SOUTH WEST` most corner.
* All commands are ignored until a valid `PLACE` is made.
* `MOVE` will move the toy robot one unit forward in the direction it is currently facing.
* `LEFT` and `RIGHT` rotates the robot 90 degrees in the specified direction without changing the position of the robot.
* `REPORT` announces the `X,Y` and `F` of the robot.

The file is assumed to have `ASCII encoding`. It is assumed that the `PLACE` command has only one space, that is `PLACE 1, 2, NORTH` is an invalid command. All commands must be in upcase, all lower and mixed case commands will be ignored.

