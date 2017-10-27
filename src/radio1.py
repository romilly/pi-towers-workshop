import radio
from microbit import *

radio.config(group=0)
radio.on()


while True:
    if button_a.is_pressed():
        radio.send('Hello radio world!')
        sleep(1000)


