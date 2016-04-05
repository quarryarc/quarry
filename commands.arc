(require "./stones/journeyman/client.arc")

(def create-mason (username password email)
  (pr (string (post-url "localhost:9999/createmason" (list 'username username 'password password 'email email))))
)
(def upload-stone (stonename files)    
    (pr (string (post-url "localhost:9999/createstone" (list 'files files) )))
)