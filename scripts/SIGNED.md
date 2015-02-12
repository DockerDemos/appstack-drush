##### Signed by https://keybase.io/clcollins
```
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEABECAAYFAlTdEEQACgkQte6EFif3vzcEhwCglSPfXplSi8bSLhOwU4yDQMI8
DZIAnjSp3Z0ekhpZtgcQl+1fmOf9IQv1
=kwc1
-----END PGP SIGNATURE-----

```

<!-- END SIGNATURES -->

### Begin signed statement 

#### Expect

```
size  exec  file                contents                                                        
            ./                                                                                  
108           core-download.sh  d84ba08f8f6b1ceb704cd4300ee0859afb146fb2e74bed28cccdf5b67757cbc5
389           core-install.sh   48571e8447fa545c12cd09ec0ebcb9bf2183967626be04095c3bcc93e8b10b17
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