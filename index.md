# dropsonde.org XMPP server

Administrator's GPG public key:

```
D785 1C98 4AEA C232 30C0 2529 9DEA 9987 AE30 5ED4
```

## Getting an account

Send a PGP-encrypted/signed email to the primary address in the above key.

## IM observatory results

+ [C2S](https://xmpp.net/result.php?domain=dropsonde.org&type=client)
+ [S2S](https://xmpp.net/result.php?domain=dropsonde.org&type=server)

## Server SSL certificate fingerprint

```
41:63:67:35:12:AF:75:03:99:E8:5C:0F:42:E9:0C:F3:
6E:32:77:D9:B0:A0:79:C9:CC:32:C9:E7:C0:F1:CA:9D
```

## Policies

+ S2S encryption required
  + an exception is made for Google
+ C2S encryption required
+ TLS v1.1 and v1.2 are the only supported TLS protocols

## Notes

+ The server runs in a Docker container.
+ The container (and the source of this site) are stored in Git.
  + Primary Git: https://git.kyleisom.net/ops/xmpp-docker
  + Github: https://github.com/kisom/xmpp-docker
