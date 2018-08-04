#!/usr/bin/env python

import os
import argparse
import logging
import requests
import zipfile
from io import BytesIO

from BeautifulSoup import BeautifulSoup

LOG = logging.getLogger(__name__)

def scrape_zip(zip_url, output_path):
    response = requests.get(zip_url, stream=False, timeout=30)
    zip_file = BytesIO(response.content)
    zip_ref = zipfile.ZipFile(zip_file, 'r')
    zip_ref.extractall(output_path)
    zip_ref.close()

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('input', type=str,
        help='Starting url')
    parser.add_argument('-v', '--verbose', action='count',
        help='Print more info')
    parser.add_argument('-o', '--output_path', type=str, default='', nargs='?',
        help='Path to output directory')
    args = parser.parse_args()

    if args.verbose == None:
        logging_level = logging.WARNING
    elif args.verbose == 1:
        logging_level = logging.INFO
    else:
        logging_level = logging.DEBUG

    logging.basicConfig(format='%(levelname)s:%(message)s', level=logging_level)

    if not os.path.exists(args.output_path):
        os.makedirs(args.output_path)

    scrape_zip(args.input, args.output_path)

if __name__ == "__main__":
    main()
