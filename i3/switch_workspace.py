#!/usr/bin/python

import i3

outputs = list(filter(lambda o: o['active'], i3.get_outputs()))

i3.workspace(outputs[0]['current_workspace'])
i3.command('move', 'workspace to output right')

i3.workspace(outputs[1]['current_workspace'])
i3.command('move', 'workspace to output right')
