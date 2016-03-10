(assign usage "Usage: \nquarry info [stone]: get info about a stone or about the current project
quarry lay <stone>: download and install an arc package
quarry build: install all the packages necessary for a project as described in a package management file
quarry mason: add/create a new quarry user
quarry cut <stone>: publish a new quarry package
quarry get <stone>: download but don’t install a quarry package
quarry help: Print quarry usage/help page
quarry rm <stone>: remove a quarry package")

(case (argv 1) 
    "mason" ((prn "someone is creating a mason") (prn "username: ")) 
    "cut" (prn "someone is creating a stone(quarry packages are called stones)") 
    "info" (prn "someone is getting info")
    "lay" (prn "someone is installing a package")
    "build" (prn "someone is building this project")
    "cut" (prn "Someone is publishing a stone")
    "get" (prn "someone is getting" + stone)
    "rm" (prn "someone is removing a stone")
    "help" (prn usage)
    (prn usage)
)

