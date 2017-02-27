\newpage

#Moving and shaking

In the experiments so far you have used the micro:bit LEDs and buttons, but this cool computer
has several other useful [peripherals]() on  board.

You're about to experiment with the accelerometer - a chip which measures *acceleration*.

We say that something *accelerates* when it changes speed or direction.  Cars, bikes, aeroplances
accelerate; so you you, when you start or stop walking, or break into a run.

If the microbit is moved or shaken, it accelerates and the acceleration is measured by its accelerometer.

The chip on the micro:bit can measure acceleration in three *axes* (directions), called x, y and z.

* The x axis corresponds to acceleration to the left or right
* The y axis corresponds to acceleration forward or backwards
* The z axis corresponds to acceleration up or down

![Micro:bit axes]()

## print() and the REPL

In the first accelerometer experiment you'll run a program that prints out the micro:bit's
acceleration along the x, y and z axis. That's a bit of a challenge; you can't use the display
becuase it's too slow. By the time you read a displayed value, the micro:bit might have changed
direction or stopped accelerating.

Fortunately there is a faster way of showing the output from a Python program. it's called the
`print` function.

When you run Python on a Laptop or desktop computer, a print statement in your program will
display output on the *console* - the window in which you started the Python program.

The micro:bit has no console, but you can still see the output of print statements.
One way to do that is to use the REPL button on the mu program window.







    # Magic 8 ball by Nicholas Tollervey. February 2016.
    #
    # Ask a question then shake.
    #
    # This program has been placed into the public domain.
    from microbit import *
    import random
    
    answers = [
        "It is certain",
        "It is decidedly so",
        "Without a doubt",
        "Yes, definitely",
        "You may rely on it",
        "As I see it, yes",
        "Most likely",
        "Outlook good",
        "Yes",
        "Signs point to yes",
        "Reply hazy try again",
        "Ask again later",
        "Better not tell you now",
        "Cannot predict now",
        "Concentrate and ask again",
        "Don't count on it",
        "My reply is no",
        "My sources say no",
        "Outlook not so good",
        "Very doubtful",
    ]
    
    while True:
        display.show('8')
        if accelerometer.was_gesture('shake'):
            display.clear()
            sleep(1000)
            display.scroll(random.choice(answers))
        sleep(10)

