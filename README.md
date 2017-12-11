This container runs the [bunyan CLI](https://github.com/trentm/node-bunyan#cli-usage)

By default these bunyan options are used:

- -L
- --color
- --no-pager

For example:  
```
$ cat mylog.log | docker run -i --rm gildas/bunyan
```

Another example with command line arguments:
```
$ cat mylog.log | docker run -i --rm gildas/bunyan -l error
```
This will filter all error log level entries.

To get bunyan's help:

```
$ docker run --rm gildas/bunyan --help
```
