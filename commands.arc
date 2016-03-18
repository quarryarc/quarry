(require "./stones/http/web.arc")

(def create-mason (username password email)
  (prn username password email)
  (post-url 'localhost:90210/createmason' cons(username passowrd email))
)




