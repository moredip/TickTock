#!/bin/sh
compc -source-path+=src -output=bin/TickTock.swc -include-classes net.thepete.TickTock
mxmlc -library-path+=bin/TickTock.swc src/Sample.mxml -output bin/Sample.swf
