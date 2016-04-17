docker-alpine-s6-base
=====================

A tiny Alpine docker image that comes with s6 as a process supervisor.

The goal is to make an image that solves the [PID 1 Zombie Problem](https://blog.phusion.nl/2015/01/20/docker-and-the-pid-1-zombie-reaping-problem).

Although not intended, it can be used as an init process to run more that one process inside the same container.


# Resources

- [s6](http://skarnet.org/software/s6/)
- [just-containers/base-alpine](https://github.com/just-containers/base-alpine)
- [just-containers/s6-overlay](https://github.com/just-containers/s6-overlay)
- [sillelien/base-alpine](https://github.com/sillelien/base-alpine)
