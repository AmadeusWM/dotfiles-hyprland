#!/usr/bin/env python3
import sys
import datetime

def date_subtract(ddldate):
    """
    math stuff
    return int daysleft
    """
    daysleft = (ddldate - datetime.date.today())
    return daysleft.days

def get_date(ddldate):
    """
    len(sys.argv) including ./count.py itself & the same to python x.py
    DD/MM/YYYY
    return : int days left
    """
    ddldate = datetime.datetime.strptime(ddldate, "%d/%m/%Y")
    return date_subtract(ddldate.date())

def get_event(event):
    """
    filter event after 1st parament
    return : str event
    """
    ddlevent = ' '.join(event)
    return ddlevent


def format_output(ddl, event):
    """
    How would you like to output
    """
    # print("There is only {} days left for {}".format(ddl, event))

    print(ddl)          # daysleft 
    print(int(ddl / 7)) # weeks left
    print(event)        # THE event that is coming towards us




if len(sys.argv) > 1:

    try:
        ddl = get_date(sys.argv[1])
        event = get_event(sys.argv[2:])
        format_output(ddl, event)
    except Exception as e:
        print("DDL is not working it wont fix itself")
else:

    print(" option: ./x.py DD/MM/YYYY event")


