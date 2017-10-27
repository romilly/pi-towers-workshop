# Radio

Radio witht the micrfo:bit is fun, and it lets you do a lot of really amaxing projects.

Radio allows you to connect two or more micro:bits and to send messages between them.

Those meesgaes could be anything. They could be commands that tell a remote microbit what to do. They could contain data, so that a mocrobit in one location knows what is happening somewhere else,

Here are a few of the projects you could do using micro:bit radio:

- Run a quiz, with one microbit for the QuizMaster and one for each team
- Pilot a powered balloon
- Monitor an out-door weather station
- Log the water level in a tank, a pond or river
- Take pictures of wildlife in your garden and send them to your computer
- Control a mobile robot
- sned secret messages from one room to another

In this chapter you'll see how easy it is to connect micro:bits together
controlling the build-in radio from micro:python.

## Hello radio world

You'll need two micor:bits for this experiment. Micor:bit one will act as a transmitter; micorbit two will wait for a
message from the transmitter and display a Smiley face before it shows the message on the scrolling display.

The code for micro:bit one is pretty straightforward. It turns the radio on and then 
loops forever, waiting for you to press button one.

Once you have pressed the button, it sends a message over the radio to micro:bit number two.

Here's the code for micro:bit one:

    import radio
    from microbit import *

    # turn the radio on
    radio.on()
    
    # loop waiting for buttion a
    while True:
        if button_a.is_pressed():
            radio.send('Hello radio world!')
            sleep(100)
            
The code for micro:bit two is just as simple. It turns the radio on and waits for a message. When a message is received,
it shows a Happy face for a tenth of a second and then prinst the mesage it just received.

Here's the code for micro:bit two:

    import radio
    from microbit import *
    
    # turn the radio on
    radio.on()
    
    # loop waiting for a message
    while True:
        message = radio.receive()
        if message:
            display.show(Image.HAPPY)
            sleep(100)
            display.scroll(message)

## Targetting radio messages

There's one problem with this simple code. What if there are lots of micro:bits all sending or receiving messges?
How does a micro:bit know which message is meant for it? This could be a problem if you had lots of people trying
the same experiment in a clasroom or workshop.


Here's how you send messages between specific micro:bits.

You need to configure the microbit radios so they can talk to each other, but other microbits won't accidentally 
overhear or interfere. You do so by setting special values called the channel, the address and the group.

Whenever a mirco:bt sends a radio message it sends it over a particular channel. A channel is like the channle on a TV; 
the mirco:but radios can use up to a hundered different channels.

If two radios are using different channels they will not receive each others' messages. If they are using the same channel,
they still won't recieve each others' messages unless these are being sent to the same address and group.

An address is like a street address; it specifies the building, but there might be several people there.

The group is more specific. It identifies exactly who should receive meesages sent to a given address.

How did your earlier example work? It wokred because you didn;t specify the channel, address or group, so both micro:bits
used the same default values.

The default channel is channel 7.

The default address is a 32-bit binary number. If you know how to write binary numbers in hexadecimal,
the default is 0x75626974. That's 1969383796 in decimal notation.

The default group is 0.

If you want to specify the channel, address or group, you can do so ising the radio's configure method.

In the examples  below the Python code specifies a group of 1 for each micro:bit. Once you have installed the code on each micro:bit
they should be able to communicate.

### micro:bit one

    import radio
    from microbit import *
    
    radio.config(group=1)
    radio.on()
    
    
    while True:
        if button_a.is_pressed():
            radio.send('Hello radio world!')
            sleep(1000)
            
### micor:bit two

    import radio
    from microbit import *
    
    radio.config(group=1)
    radio.on()
    
    
    while True:
        message = radio.receive()
        if message:
            display.show(Image.HAPPY)
            sleep(100)
            display.scroll(message)


   
1. You need to send a message (some text) from one micro:bit
1. You need to read the message on one or more micro:bits, and take appropriate action.

You can do all of this using simple micro:python code.

### Configure the radio

Imagine a room full of micro:bit experimenters. It might be a classroom or a meetup of micro:bit fans.

Imagine that the experimenters were trying out the code in this workbook, so they had paired up in order to
check how to send information form one micro:bit to another.

If all the micro:bits sent and received all the messages there would be chaos. You'd never know whether the message
you received was meant for you or antoher micro:bit belonging to another pair.

As you'll see, there is an easy way to avoid the problem.

Each micro:bit sends radio messages over a *channel* which you specify, and only the micro:bits that are
tuned to that channel can see those messages. There are one hundred passible channels.

Within a channel, you send messages to a particular *address*. There are thousands of millions of possible addresses!
 
Each message is sent to a *group* within that address. There are 256 groups at an address. Only the micro:bit(s) in that group will receive that message.

If you want to make sure that the messages you send are only seen by the micro:bit(s) you're using you will need to
use a combination of channel and group that are different from everyone else. That may need some discussion!

If that's not possible you might have to rely on luck. 

If you chose an address at random, it's very unlikely that someone else will pick the same address. 

