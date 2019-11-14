# cron-delete

[![Build Status](https://travis-ci.com/gdunstone/cron-delete.svg?branch=master)](https://travis-ci.com/gdunstone/cron-delete)

_now with 100% more multiarch support!_

deletes oldest files once a directory has reached a maximum size

### Instructions:

* targets specific directory set by the environment variable **WATCH_DIRECTORY**

* set maximum size with **WATCH_DIRECTORY_MAX_SIZE** (8G, 1M, 180K)

eg: 

`docker run -d -v $PWD:/data:rw -e WATCH_DIRECTORY=/data -e WATCH_DIRECTORY_MAX_SIZE=8G gudnstone/cron-delete`
