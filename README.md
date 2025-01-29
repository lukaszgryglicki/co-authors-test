# README

To correctly identify GitHub co-author add the following git commit message trailer via `` git commit --amend ``:

1) `` Co-authored-by: Anything <public-email> `` (where `public-email` is somebody's GitHub public email).
2) `` Co-authored-by: Anything <username@users.noreply.github.com> `` (where `username` is a correct GitHub user name).
2) `` Co-authored-by: Anything <ID+username@users.noreply.github.com> `` (where `username` is a correct GitHub user name and `ID` is a correct GitHub ID).


It will not work for:
1) `` Co-authored-by: Anything <email> `` (where `email` is not somebody's public GitHub email).


It will not work as expected:
2) `` Co-authored-by: Anything <ID+username@users.noreply.github.com> `` (if `ID` is correct it will be used to identify GitHub user even if `username` does not belong to ID's GitHub profile - `ID` will have precedence and `username` will be ignored).
