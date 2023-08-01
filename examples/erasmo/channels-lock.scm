(use-modules (guix channels))

(list (channel
       (name 'erasmo)
       (url "https://github.com/citypilgrim/erasmo.git")
       (branch "master")
       (commit
        "96be4dfa54cf15b84a40bba6e5a5ccae8d09e842")
       (introduction
        (make-channel-introduction
         "fb2fb012abd118840ea7680df33b65314e0fa286"
         (openpgp-fingerprint
          "2671 DFBB F07B 5CD2 AC69  3A31 3C32 02B6 6FC4 4741"))))
      (channel
       (name 'rde)
       (url "https://git.sr.ht/~abcdw/rde")
       (branch "master")
       (commit
        "4384afa60786b9427874961fcb289eb0f7e06fb9")
       (introduction
        (make-channel-introduction
         "257cebd587b66e4d865b3537a9a88cccd7107c95"
         (openpgp-fingerprint
          "2841 9AC6 5038 7440 C7E9  2FFA 2208 D209 58C1 DEB0"))))
      (channel
       (name 'guix)
       (url "https://git.savannah.gnu.org/git/guix.git")
       (branch "master")
       (commit
        "cf7e0267adfc3cb83e477c2aebb61060c3c0cfd6")
       (introduction
        (make-channel-introduction
         "9edb3f66fd807b096b48283debdcddccfea34bad"
         (openpgp-fingerprint
          "BBB0 2DDF 2CEA F6A8 0D1D  E643 A2A0 6DF2 A33A 54FA")))))
