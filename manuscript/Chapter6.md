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

TODO: replace Arduino-specific references

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

### Testing the code

Here's the code:

Once you have copied the code, flash it onto the micro:bit and open the REPL.

You should see a series of lines displaying ADC output based on the analogue voltage measured across the LDR.

#### Working in the dark

Cover the LDR with your hand. The value being printed should go *up*. Now uncover the LDR.
The value should go down again. 

Since an output of 0 corresponds to zero Volts, and an output of 1023 corresponds to a Voltage of 3.3 Volts,
we can turn the ADC output into a voltage by dividing by 1023 and then multiplying by 3.3.

In Python, we can define that as a function:

    def adc_to_amps(adc_output):
        return adc_outptut * 3.3 / 1024.0
        
Add that function to your Python script and change the print statement to read `print (adc_to_amps(adc))` 

Re-flash the program and look at the output in thr REPL again. Now you should see a series of floating-point
(decimal) numbers being displayed, corresponding to the voltage measured at across the LDR.
    

The LDR has a high resistance in the dark, and a low resistance in the light.

The 3.3 volts across the circuit causes a current to flow through the fixed 10K ohm resistor and the LDR.

First, let's think about what happens when the LDR is well lit (so its resistance is low).

Suppose that current is 0.3 mA (three tenths of a milli-Amp, or 0.0003 Amp). Then the voltage across the resistor would
be 0.0001 times its resistance, which we know is 10,000 Ohms. So the voltage across the resistor would be three Volts,
and the voltage across the LDR would be 0.3 Volts.

Since a current of 0.1 mA is flowing through the LDR, and the voltage across the LDR is 2.3 Volts, the resistance of
the LDR must be 3,000 Ohms.

Now imagine that the LDR is in the dark, so its resistance is high. Suppose the current is now 0.03 mA.

The voltage across the fixed resistor would be 0.3 volts, so the voltage across the LDR would be 3 Volts.

Since the current through the LDR is 0.03 mA, the Resistance must be 100K Ohms.

How can we calculate the resistance from the measured voltage?

### The general rule

Call the voltage across the LDR `v_ldr`. Call the (unknown) current through the circuit `i`.

 TODO: our, we -> your, you

Then the voltage across our 10K fixed resistor is `10000 * i`, so the known voltage across the LDR 
`v_ldr = 3.3 - 10000 * i`. From this we can calculate i; solving for `i`, we have
`v_ldr + 10000 *i = 3.3`
`10000*i = 3.3 - v_ldr`
`i = (3.3 - v_ldr)/ 10000`

Now we know `i`, we can calculate the resistance of the LDR. It's `v_ldr/i`


<!-- TODO: move calcs to a new Appendix? -->

### Converting to a Light Level

Using a similar argument, you can construct a formula that will calculate a light level from the ADC output,

