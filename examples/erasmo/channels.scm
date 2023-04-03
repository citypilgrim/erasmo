(use-modules (guix ci)
             (guix channels))

(list
 %default-guix-channel
 (channel
  (name 'rde)
  (url "https://git.sr.ht/~abcdw/rde")
  (introduction
   (make-channel-introduction
    "257cebd587b66e4d865b3537a9a88cccd7107c95"
    (openpgp-fingerprint
     "2841 9AC6 5038 7440 C7E9  2FFA 2208 D209 58C1 DEB0"))))
 (channel
  (name 'erasmo)
  (url "https://github.com/citypilgrim/erasmo.git")
  (introduction
   (make-channel-introduction
    "fb2fb012abd118840ea7680df33b65314e0fa286"
    (openpgp-fingerprint
     "2671 DFBB F07B 5CD2 AC69  3A31 3C32 02B6 6FC4 4741")))))
