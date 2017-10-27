import radio
from microbit import *

radio.config(group=0)
radio.on()


while True:
    message = radio.receive()
    if message:
        display.show(Image.HAPPY)
        sleep(100)
        display.scroll(message)

