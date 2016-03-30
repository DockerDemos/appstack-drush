##### Signed by https://keybase.io/clcollins
```
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEABECAAYFAlb8B+AACgkQte6EFif3vzdt0QCeKwpeSuhZpis0F2qrGIUstoJY
z8MAnAywrhz0KCyMQQ0HI4Qup078qUl6
=4xaB
-----END PGP SIGNATURE-----

```

<!-- END SIGNATURES -->

### Begin signed statement 

#### Expect

```
size   exec  file                  contents                                                                                                                         
             ./                                                                                                                                                     
12288          .Dockerfile.swp     b31eb0882c19754472b4c89eb2962aef1695aef66a0115cf74948f99a90b3117|cd2f6656c7d19f02efe5f9628c328d3e9a3004ac1abed39ae1ef616db48d5dc0
867            Dockerfile          d6f5ba1d23d3a1b555c1aa6c490712d07516cce170a9b36cc700e7a9241f5df6                                                                 
35122          LICENSE             12ac5047f2af0522f06798b1589ffc4599bc29c91f954d7874e0320634e777c0                                                                 
1930           README.md           05f89a7c236e7c0628bff4cf37dcf220ead750f57c0e0d66b4f5e833c20c6a8f                                                                 
1081           install_drush.sh    e6c6f83d45427ebd22f4e55298015ddee06b011b63f9250e3797a3434fa10e0c                                                                 
               scripts/                                                                                                                                             
1607             SIGNED.md         3e0a1f958304c006979b1b6ebd114e53362d5639801c4bbc3f50aafd7c577a68                                                                 
107              core-download.sh  34a581658f3a09b109691b08239d0578f9883c187cc19d3368dde61eab023a37                                                                 
467              core-install.sh   860ed9cde4bbd2045a9b018d194e73d25f98971628115c6b3a0871e008fefc87                                                                 
```

#### Ignore

```
/SIGNED.md
```

#### Presets

```
git      # ignore .git and anything as described by .gitignore files
dropbox  # ignore .dropbox-cache and other Dropbox-related files    
kb       # ignore anything as described by .kbignore files          
```

<!-- summarize version = 0.0.9 -->

### End signed statement

<hr>

#### Notes

With keybase you can sign any directory's contents, whether it's a git repo,
source code distribution, or a personal documents folder. It aims to replace the drudgery of:

  1. comparing a zipped file to a detached statement
  2. downloading a public key
  3. confirming it is in fact the author's by reviewing public statements they've made, using it

All in one simple command:

```bash
keybase dir verify
```

There are lots of options, including assertions for automating your checks.

For more info, check out https://keybase.io/docs/command_line/code_signing