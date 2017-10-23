\newpage

# Analogue Inputs

In this chapter you'll monitor the light
level with a micro:bit and a Light Dependent Resistor (LDR).

So far you've seen how to check a digital
(on/off) input, like a button. In these experiments you'll use an analogue
input. These can measure a voltage between 0 and 3.3 volts. The micro:bit has
three analogue inputs available (pins 3, 4 and 10).

#### What you will learn

You'll learn about how LDRs behave as the light level changes,
and you will learn how to read the value of an analogue input on the micro:bit.

#### Why this is useful

If you're building a robot that steers itself, an unmanned helicopter, a
weather station or an energy monitor, you'll need to read analogue
values.

### Light dependent resistors

*Light Dependent Resistors* (LDRs, also known as photoresistors) are inexpensive, easy-to-use
components that measure light levels by changing their resistance. A
typical LDR might have a resistance of 5,000 ohms in daylight and
100,000 ohms in the dark.

#### An LDR

![An LDR](images/LDR.jpg)

[The image on this wikipedia
page](http://en.wikipedia.org/wiki/Photoresistor) shows a typical LDR.

#### Schematic diagram

![Schematic diagram](images/just-ldr_schem.png)

Here's how you can convert a varying light level into a varying voltage
that the Arduino can measure.

The LDR is connected in series with a normal fixed resistor. As the
light level changes, the resistance of the LDR changes too.

If you apply 5 volts across the circuit, the voltage at the junction of
the LDR and the fixed resistor will change as the voltage of the LDR.

The circuit is a voltage divider; the voltage across each resistor is
proportional to the resistance. So when the LDR is *brightly lit*, its
resistance will be low and *the voltage across it will be low*.

When the LDR is *dark*, its resistance will be high and *the voltage
across it will be high*.

#### Understanding Analogue input values on the Arduino

When you use and Arduino to measure a voltage, you don't get a value in
volts. The value returned by analogRead is an integer that ranges
between 0 and 1023. A value of 0 indicates an input of 0 volts; a value
of 1023 indicates an input of 5 volts.

You'll need to take account of that later on when coding your sketch.

### Breadboarding the LDR

You should start by breadboarding the circuit using the LDR and resistor
from your experimenter's kit.

#### Using the Shrimp

![Using the Shrimp](images/shrimp-ldr_bb.png)

Here's how to add the LDR and resistor if you're using the Shrimp.

#### Using the Arduino

![Using the Arduino](images/arduino-ldr_bb.png)

This is the corresponding diagram for the Arduino

### Adapting the Analogue example

There's a useful sketch among the Arduino samples which you can use to
test your circuit as soon as you've breadboarded it.

It's called *AnalogInput*, and it was intended to be used with a
potentiometer (a variable resistor) but it will work just as well with
our LDR and resistor combination.

You'll need to make one change to it: the sketch assumes that you're
using analogue input 0 (A0) but if you've followed the diagrams earlier
you will be using analog input 5 (A5). It should be easy to see the the
place in the sketch to make that change.

You may also want to update the comments if you want to keep a copy of
the modified sketch for future use.