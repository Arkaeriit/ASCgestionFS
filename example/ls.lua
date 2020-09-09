#!/usr/local/bin/lua

local gFS = require("gestionFS")

local ls = gFS.ls(".") --Create a table with all the files of the working dirrectory
for i=1,#ls do --print the name of each files
    print(ls[i])
end

