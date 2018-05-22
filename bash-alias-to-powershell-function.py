import re

first = re.compile('alias ')
lines = [ line for line in open('.bash_aliases') if re.match(first, line) ]
first_repl='Function '
second = re.compile('=\'')
second_repl=' { '
third='\'\\n'
third_repl=' }'

for x in range(0, len(lines)-1):
    myfun=re.sub(third, third_repl, re.sub(second, second_repl, re.sub(first, first_repl, lines[x])))
    print(myfun)

