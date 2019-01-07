#!/usr/bin/env python3
# https://www.rabbitmq.com/tutorials/tutorial-one-python.html


import pika
import sys


message = ' '.join(sys.argv[1:]) or "Hello World!"

connection = pika.BlockingConnection(pika.ConnectionParameters('localhost'))
channel = connection.channel()

channel.queue_declare(queue='task_queue', durable=True)

# default exchange specified by empty string
channel.basic_publish(exchange='',
                      routing_key='task_queue',
                      body=message,
                      properties=pika.BasicProperties(
                        delivery_mode=2, # make message persistent
                      ))

print(" [x] Sent %r" % message)

connection.close()

