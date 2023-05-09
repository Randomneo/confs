from uptime import boottime
from dateutil import parser

if __name__ == '__main__':
    with open('logger.txt', 'r') as f:
        lines = f.readlines()
    new_time = boottime()
    try:
        old_time = parser.parse(lines[-1])
    except IndexError:
        old_time = None
    if old_time and f[-1].date() == boottime:
        exit(0)
    else:
        with open('logger.txt', 'w') as f:
            f.write(new_time.isoformat())
