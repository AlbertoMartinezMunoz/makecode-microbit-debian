# makecode-microbit-debian
Installation instructions to install makecode in debian and use it for developing for micro:bit

We will need `npm` to install `pxt`

```console
sudo apt-get install -y nodejs npm
```

Run it with:

```console
sh install-makecode.sh
```

This should take quite a while to finish.

For every PXT target (editor) you will need to create a directory for your projects.

```console
mkdir microbit
cd microbit
pxt target microbit
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