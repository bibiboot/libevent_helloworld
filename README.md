# libevent_helloworld
Hello world project to use libevent as echo server

[Based on the blog](http://www.pacificsimplicity.ca/blog/libevent-echo-server-tutorial)

Build and install libevent
==========================
1. cd deps
2. wget github.com/downloads/libevent/libevent/libevent-2.0.20-stable.tar.gz
3. tar -xzvf libevent-2.0.20-stable.tar.gz
4. cd libevent-2.0.20-stable
5. ./configure --prefix=../../build/libevent/
6. make
7. make install

Build the hello world
=====================
1. make build

Start the server
================
1. ./bin/r

Test the server
===============
1. echo -n 'test' | nc -U /tmp/mysocket1


