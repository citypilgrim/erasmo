(use-modules (guix ci)
             (guix channels))

(list
 %default-guix-channel
 (channel
  (name 'erasmo)
  (url "https://github.com/citypilgrim/erasmo.git")
  (introduction
   (make-channel-introduction
    "fb2fb012abd118840ea7680df33b65314e0fa286"
    (openpgp-fingerprint
     "2671 DFBB F07B 5CD2 AC69  3A31 3C32 02B6 6FC4 4741")))))
