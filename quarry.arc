(require "./commands.arc")

(assign usage "Usage: \nquarry info [stone]: get info about a stone or about the current project
quarry lay <stone>: download and install an arc package
quarry build: install all the packages necessary for a project as described in a package management file
quarry mason: add/create a new quarry user
quarry cut <stone>: publish a new quarry package
quarry get <stone>: download but don’t install a quarry package
quarry help: Print quarry usage/help page
quarry rm <stone>: remove a quarry package")
;;Will rewrite if graceful list lookup is implemented: https://github.com/arclanguage/anarki/issues/48
(if (< (len argv) 2)
    (prn usage)
    (case (argv 1) 
        "mason" (do 
            (prn "username: ") (= username (readline) )
            (pr "password: ") (= password (readline)) 
            (pr "email: ") (= email (readline))
            (create-mason username password email))
        "cut" (do
                (if (< (len argv) 3)
                    (do (prn "pick a name for your new stone: ")
                     (= stonename (readline)))
                    (= stonename (argv 2))
                )
                (= files (table))
                (each f (dir ($ (path->string (current-directory))))(unless (dir-exists f) (= (files f) (infile f))))
                (pr files)
                (upload-stone stonename files)
              )
               
        "info" (prn "someone is getting info")
        "lay" (prn "someone is installing a package")
        "build" (prn "someone is building this project")
        "cut" (prn "Someone is publishing a stone")
        "get" (prn "someone is getting" + stone)
        "rm" (prn "someone is removing a stone")
        "help" (prn usage)
        (prn usage)
    )
)

