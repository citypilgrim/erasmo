(use-modules (guix channels))

(list (channel
        (name 'erasmo)
        (url "https://github.com/citypilgrim/erasmo.git")
        (branch "master")
        (commit
<<<<<<< Updated upstream
          "2c2f66193fdff78431e0c9f4740ac4e4dde39761")
=======
          "d9cdbc607e74f0fdc0e1ce3373d64e75a06d12d4")
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
          "778c7da031ab4139ed0862b475b2e98ff7b3b9d3")
=======
          "043b3982865e5936acf12f95e0952277141d58d9")
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
          "dc2b59ddc1e8f510935777db40e881896f7a0cab")
=======
          "be5bec47f7942a5e4d2a30eadd9a6fa4c715e88b")
>>>>>>> Stashed changes
        (introduction
          (make-channel-introduction
            "9edb3f66fd807b096b48283debdcddccfea34bad"
            (openpgp-fingerprint
              "BBB0 2DDF 2CEA F6A8 0D1D  E643 A2A0 6DF2 A33A 54FA")))))
