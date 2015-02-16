##### Signed by https://keybase.io/clcollins
```
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEABECAAYFAlTiYRIACgkQte6EFif3vzelqQCfZT/lXUgkBLunSNO4F+QfrKKR
EqMAn11l6yHcRhJZ7pVz+aQEGsm6jPNM
=sKF4
-----END PGP SIGNATURE-----

```

<!-- END SIGNATURES -->

### Begin signed statement 

#### Expect

```
size   exec  file                  contents                                                        
             ./                                                                                    
1015           Dockerfile          fb2d32b252323d2e92127a50f1d935adc01bc9bbe91a39da911a2853cf7a8766
35122          LICENSE             12ac5047f2af0522f06798b1589ffc4599bc29c91f954d7874e0320634e777c0
1662           README.md           8593a7355763787eb20d834166fae343d6a422994beeb287093033651fa38bc4
               scripts/                                                                            
1607             SIGNED.md         3e0a1f958304c006979b1b6ebd114e53362d5639801c4bbc3f50aafd7c577a68
186              core-download.sh  d4aee12554523d2f753458b7e7b3e8c30bce1884289524444c0abaef7d8bd72a
389              core-install.sh   48571e8447fa545c12cd09ec0ebcb9bf2183967626be04095c3bcc93e8b10b17
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