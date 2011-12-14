# Diff your JSON!

Diff isn't the best tool for comparing JS files. It's necessary to run js files through a formatter so that diff can work effectively, this is the preferred way. Just in case you would like a standalone command for comparing two JS files, jsdiff will display a hash of the differences between the two files. However, you will lose the information that diff provides to you as to what is added or removed in which file, jsdiff will only tell you what is different and apply syntax highlighting.

![JSDiff](http://i.imgur.com/rAbJp.png)

## Install

`sudo gem install jsdiff`

## Usage

```
jsdiff a.js b.js


