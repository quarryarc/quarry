(require "./stones/client/client.arc")

(def create-mason (username password email)
  (pr (string (post-url "localhost:9999/createmason" (list 'username username 'password password 'email email))))
)
(def upload-stone (name files)    
    (pr (string (post-url "localhost:9999/createstone" (list 'files files) )))
)