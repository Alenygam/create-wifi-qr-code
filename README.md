# wifiqr

Simple bash script that builds upon the qr pip package.

## Usage

### arguments

+ `-o=<file>.png`: path of output qr code image. This argument is not required, 
by default the image is displayed on stdout

### If ran unpiped

A nice interactive interface will appear.

### pipes

This supports pipes. The options should be separated by newline characters.
For example: 

```
echo "<SSID>
<hidden>
<encryption>
<password>" | wifiqr
```

+ `<SSID>`: SSID of the network
+ `<y>`: whether the network is hidden or not (y/N)
+ `<encryption>`: is the number in the list that corresponds to the right encryption
+ `<password>`: network password

The encryption list is as follows

1. WPA/WPA2
2. WEP
3. nopass

## Why did I make this

There wasn't any simple command line way to generate a qr
code for a Wi-Fi connection, and so I decided to make one.

Also I was bored and I did this in an afternoon lol.
