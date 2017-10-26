import radio
from microbit import *

radio.on()

while True:
    message = radio.receive()
    if message:
        display.show(Image.HAPPY)
        sleep(1000)
        display.scroll(message)

