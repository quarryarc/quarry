(require "./stones/http/web.arc")

(def create-mason (username password email)
  (post-url "localhost:9999/createmason" (list 'username username 'password password 'email email))
)
