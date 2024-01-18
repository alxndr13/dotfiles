#! /usr/bin/env python2
from subprocess import check_output

def get_pass(account):
    return check_output("op read op://Personal/mailbox.org/password", shell=True).splitlines()[0]
