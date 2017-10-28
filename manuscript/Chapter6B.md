# Logging data with the micro:bit

You've seen how the micro:bit can measure varying values like light levels in the real world. It's
often useful to keep a record of how such things change over time.

When you kep a record of how something changes over time you are *Logging* the data.

The word *logging* comes from a Ship's *Logbook* - the book in which sailors record the speed and location
of the ship they are sailing in.

Speed was originally measured using a bit of wood (the log) ties to a piece of knotted string. You threw the
log into the water. Then you counted how many knots you let out in a given time, so you could work out the
ship's speed. Sailors still measure a ship's speed in *knots*!

There are several ways in which you can use a micro:bit to log data:

- logging with the file system
- logging with an attached computer
- logging over radio

Let's take a look at each technique.

## Logging with the file system

MicroPython on the micro:bit can create, write and read files, just like the files on a normal computer.

This means that you can store the data you want to log in a file and then read it back later. Best of all,
your data will stay there when the micor:bit is switched off unti you delete the file or re-flash the micro:bit.

It's a useful technique so long as you don't have too much data. The size of the file system is limited to
30K bytes. If you;re trying to log a rapidly changin value that's prbably not going to be enouth, but if you just want
to keep track of the temperature at mid-day each day that's enough to store the data for several years!

### Accessing the file system

If you know how to use files in Python, you already know how to access them in Mirco{ython on the mirco:bit.

If you're new to file handling in Pythoin, here's a quick guide.

You write data to a file in three stages.

1. You *open* the file for writing. That will create the file if it doesn't already exist.
1. You *write* the data to the file.
1. When you've finished, you *close* the file.

Here's some sample code.



Here's a program that will log the micro:bit's temperature every minute and then print out the results when you press button a.





