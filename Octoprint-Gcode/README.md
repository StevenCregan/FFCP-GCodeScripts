# G-code For Use W/Flashforge Creator Pro & Simplify3D

This Folder contains:

* Octoprint G-code scripts

## Usage

When using Octoprint with the FFCP, you will need to have the GPX plugin. This will allow Octoprint to communicate via USB to the printer.
It's recommended to increase the "Pause after connection" value, to ensure the machine has had enough time to start properly.
I personally have also turned off the "Clear coordinate system before print start" option.

After getting Octoprint set up, the scripts contained in this folder can be copied into the GCode Scripts section


### Connect
The [Connect script](./connect.gcode) is used due to a communication error when connecting to the FFCP over USB from an Octoprint server.

Starting a print after connecting without running this script will sometimes cause the carriage to ram into the endstops, or lose it's position.

Running this script on connect seems to alleviate this issue

### Cancel

The [Cancel script](./cancel.gcode) is used to clear the carriage and build plate in the event of an emergency stop.

There is sometimes a communication error between the Octoprint server and the FFCP, in which the build does not properly cancel, or alternatively, attemps to resume printing after cancelling
Another issue observed is that the Octoprint server may get stuck in a "Waiting" or "Cancelling" state, while waiting for an acknowledgment signal from the FFCP.

The goal of this script is to prevent these issues, but it still needs work as of this writing (9/24/2018)


## Contibutions
Feel free to open issues/pull requests if you have scripts you'd like added or changed

Hopefully we can increase the number of compatible slicers available.

Please be sure that you comment lines in your gcode before creating a pull request, for readability and accessibility 

## License
These files are released under a Creative Commons Attribution 4.0 International license.
