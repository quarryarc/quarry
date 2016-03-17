(require "./stones/http/web.arc")

(def create-mason (username password email)
  (prn username password email)
  ; (http.post(
  ;  'quarry.io/createmason', {username, passowrd, email}
  ; ))
)

(def google-test (queryString)
  (google queryString)
)



