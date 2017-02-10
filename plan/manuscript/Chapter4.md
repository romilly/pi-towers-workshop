\newpage

#Buttons

In the previous experiments you saw how to tell the micro:bit to output
information using the display.

Sometimes you want to input information as well.
 
One way to do that is to use the mirco:bit's buttons.

The micro:bit has two buttons labelled *a* and *b*.

You can easily test to see if a button has been pressed by using a Python `if`
statement.

In Python, you can program an `if` statement like this:

if *something is true*:
   *do this*
   
Let's look at a specific example.
The next program will display a happy face if button *a* is pressed.

    from microbit import *
    
    while True:
        if button_a.is_pressed():
            display.show(Image.HAPPY)

Once the happy face has been displayed, it stays there
whether the button is pressed or not.

If you use a more powerful version of the `if` statement you can repeatedly check
button *a*. If it's pressed,  display a happy face. If it's not,
you clear the display.

Here's the code:

    from microbit import *
    
    while True:
        if button_a.is_pressed():
            display.show(Image.HAPPY)
        else:
            display.clear()




