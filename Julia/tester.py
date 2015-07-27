#!/usr/bin/env python

import sys
import argparse

parser = argparse.ArgumentParser(description='Test Euler')
parser.add_argument('--file', metavar='H', default="127.0.0.1",
                    type=str,
                    help='the host for the forecasting service')

# parser.add_argument('--port', metavar="P", default=5000,
#                     type=int,
#                     help='the port to run the forecasting service on')

# parser.add_argument('--workers', metavar="W", default=1,
#                     type=int,
#                     help='the number of workers to launch')

# parser.add_argument('--debug', metavar="D", default=False,
#                     type=bool,
#                     help='launch with debug mode')

args = parser.parse_args()

