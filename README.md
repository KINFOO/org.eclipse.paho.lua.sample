# Paho Lua Client Sample

A slight taste of MQTT using Lua.

## Prerequisites

* [Lua 5.1](http://www.lua.org/download.html)
* [LuaRocks](https://luarocks.org/)

## Install `Paho Lua Client`

```sh
$ git clone https://git.eclipse.org/r/paho/org.eclipse.paho.mqtt.lua
$ cd org.eclipse.paho.mqtt.lua
$ luarocks make --local rocks/paho-mqtt-0.3.0-1.rockspec
```

You're all set.

__Note:__ This sample has been made using [LDT](http://www.eclipse.org/ldt/).

## Run

```sh
$ lua src/main.lua
```
