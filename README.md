# Rabbitbench

some benchmarks for Rabbitmq on Raspberry.

Results are in the gh-pages branch which will be our blog sub-site about the results

We will use the Java client acd the client benchmark tools to run various benchmarks on Raspberry.

Sources and Credits: 

- https://github.com/rabbitmq/rabbitmq-perf-html
- https://www.rabbitmq.com/java-tools.html

A detailed description can be found on my [blog](http://blog.abarbanell.de).

## HOW TO RUN

first, make sure you have java installed, then clone this repo and from within the repo folder, do: 

```
$ ./setup.sh
```
to set up the tools, then you will need to edit the file 'spec.js' in each of benchmark scenario folders './scenarios/*'
 to have valid AMQP URI's for your rabbitMQ broker. You can also create new scenario's by copying  the 'spec.js' file to a new scenario folder.

Then run your scenario's with 

````
$ ./bench.sh
```

This will create (or overwrite) the result.js in each of the scenario folders.

You can visualize this with the report.html file in each scenario file. Depending on your browser you may not be able to view this via the "file://.." url, then you just could just fire up a local web server like so: 

```
$ python -m SimpleHTTPServer
```

