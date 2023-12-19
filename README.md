# elder-kettle
Demonstrate use of prometheus client with gorilla mux within kubernetes

Updates random gauge value every 3 seconds, which is reflected at localhost/metrics.

This also demonstrates a PodMonitor which works with kube-promethues.

Thank you [Stack Overflow](https://stackoverflow.com/questions/76614905/how-to-debug-podmonitor-generated-rules)
