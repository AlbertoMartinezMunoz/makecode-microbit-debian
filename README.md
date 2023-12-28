# makecode-microbit-debian

Installation instructions to install makecode in debian and use it for developing for micro:bit

## Installation

To install makecode for microbit in Debian, we only need to run the `debian-install-makecode-microbit.sh` script:

```console
sh debian-install-makecode-microbit.sh
```

This should take quite a while to finish.

## Run

After installation, a directory for microbit projects should be created.

```console
mkdir microbit
cd microbit
pxt target microbit
```

Then we can launch the makecode app

```console
pxt serve
```

This step will also take quite a while the first time you run it, since it needs to build various resources.

Eventually, MakeCode should print something like the following...

```console
starting local ws server at 3233...
---------------------------------------------

To launch the editor, open this URL:
http://localhost:3232/#local_token=0918998d-feec-4217-3c97-41d14634b51f&wsport=3233

---------------------------------------------
opening http://localhost:3232/#local_token=0918998d-feec-4217-3c97-41d14634b51f&wsport=3233
```

...and then open in your web browser [http://localhost:3232/#local_token=0918998d-feec-4217-3c97-41d14634b51f&wsport=3233](http://localhost:3232/#local_token=0918998d-feec-4217-3c97-41d14634b51f&wsport=3233).

## Installation Script

First, we will need `npm` to install `pxt`

```console
#!/bin/sh

# Install Node.js:
sudo apt-get install -y nodejs npm
```

Then, we install jake, typing and ptx so we can launch makecode

```console
# Install some dependencies:
sudo apt-get install -y git libsecret-1-dev
sudo npm install -g jake
sudo npm install -g typings
sudo npm install -g pxt
```

Then we download pxt, and microbit repos

```console
# Clone repos from GitHub:
git clone https://github.com/Microsoft/pxt
git clone https://github.com/Microsoft/pxt-common-packages
git clone https://github.com/microsoft/pxt-microbit.git
```

First we install pxt

```console
cd pxt
npm install
typings install
jake
```

Then the common packages

```console
cd ..
cd pxt-common-packages
npm install
sudo npm link ../pxt
```

After that, we install micro:bit makecode packages

```console
cd ..
cd pxt-microbit
npm install
sudo npm link ../pxt
sudo npm link ../pxt-common-packages
```

## KeyEstudio Packages

Then, we are going to add KeyEstudio makecode packages to use on the 

In the add extensions, we enter the link： [https://github.com/keyestudio2019/mecanum_robot_v2.git](https://github.com/keyestudio2019/mecanum_robot_v2.git) to search. Then, we tap the searching result “MecanumRobotV2” to download and install it, This process may take a few seconds.

After the installation, you can find the extension files Mecanum RobotV2 and IrRemote on the left side. Neopixel is also installed.
