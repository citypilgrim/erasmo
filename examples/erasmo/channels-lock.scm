(use-modules (guix channels))

(list (channel
        (name 'erasmo)
        (url "https://github.com/citypilgrim/erasmo.git")
        (branch "master")
        (commit
          "e1aecf93a7b3e83744c03d0e3a19ef4cefc448a5")
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
          "474cc01a68db93016b039a6fc856ad6fdc6772e5")
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
          "b82a18c8a33482249c634de1e91be18ac10a3c76")
        (introduction
          (make-channel-introduction
            "9edb3f66fd807b096b48283debdcddccfea34bad"
            (openpgp-fingerprint
              "BBB0 2DDF 2CEA F6A8 0D1D  E643 A2A0 6DF2 A33A 54FA")))))
