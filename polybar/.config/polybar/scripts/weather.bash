#!/bin/bash

# Source: https://github.com/chubin/wttr.in
#     c    Weather condition,
#     C    Weather condition textual name,
#     h    Humidity,
#     t    Temperature (Actual),
#     f    Temperature (Feels Like),
#     w    Wind,
#     l    Location,
#     m    Moonphase 🌑🌒🌓🌔🌕🌖🌗🌘,
#     M    Moonday,
#     p    precipitation (mm),
#     o    Probability of Precipitation,
#     P    pressure (hPa),

#     D    Dawn*,
#     S    Sunrise*,
#     z    Zenith*,
#     s    Sunset*,
#     d    Dusk*.

# (*times are shown in the local timezone)


w=$(curl -s v2d.wttr.in/?format="%f+%P")

echo "   ${w}  "
