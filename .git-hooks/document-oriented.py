#!/usr/bin/env python3

import argparse
import fnmatch
import subprocess
from typing import List


def get_args():
    # Parse command line arguments
    parser = argparse.ArgumentParser(description='If the source file changes, at least one document must be updated.')
    parser.add_argument('-d', '--doc', action='append', dest='docs', help='docs pattern')
    parser.add_argument('-s', '--source', action='append', dest='sources', help='Source pattern')
    return parser.parse_args()


def validate_args(doc_patterns: List[str], src_patterns: List[str]) -> None:
    # Ensure inputs are specified
    doc_patterns = doc_patterns or []
    if len(doc_patterns) == 0:
        print('At least one document pattern must be specified.')
        exit(1)

    src_patterns = src_patterns or []
    if len(src_patterns) == 0:
        print('At least one source pattern must be specified.')
        exit(1)


def get_changed_files() -> List[str]:
    # Get the list of changed files using git log command
    output = subprocess.check_output(["git", "log", "--name-only", "--pretty=format:''", "origin..HEAD"],
                                     universal_newlines=True)

    # Split the output into a list of file names
    changed_files = output.strip().split('\n')
    return [file for file in changed_files if len(file.strip()) > 0]


def main():
    args = get_args()
    validate_args(args.docs, args.sources)

    changed_files = get_changed_files()

    # Use fnmatch to select files that match at least one of the patterns
    src_files = [path for path in changed_files if any(fnmatch.fnmatch(path, pattern) for pattern in args.sources)]
    doc_files = [path for path in changed_files if any(fnmatch.fnmatch(path, pattern) for pattern in args.docs)]

    if len(src_files) > 0 and len(doc_files) == 0:
        print(f'{len(src_files)} source files have been changed. It is necessary to update at least one document file.')
        exit(1)


if __name__ == '__main__':
    main()
