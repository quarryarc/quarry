(require "./stones/http/web.arc")

(def create-mason (username password email)
  (prn username password email)
  (= post-data  (list 'username username 'password password 'email email))
  (prn "post data: " post-data)
  (post-url "localhost:9999/createmason" (list 'username username 'password password 'email email))

)
