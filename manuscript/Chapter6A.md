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

## Send radio messages

Here's how you send messages between micro:bits.

1. You need to configure the microbits so they can talk to each other, but other microbits won't accidentally 
overhear or interfere.
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

