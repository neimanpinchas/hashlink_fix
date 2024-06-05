This repo is related to the following post on the haxe forum https://community.haxe.org/t/hashlink-access-violation-when-abstract-is-used-as-inerface/4250

It covers 2 mysteries, both of them are working properly in javascript cpp, and in neko, but both are not working in hashlink.

 #1 `BigInt.fromStringWithBase("12345678912345678912345678909",10);` number is not parsed/initialized properly but as a small number, also multiplying give wrong results

 #2 is the real issue mentioned in the post above, by overcoming the first issue (creating a small number and growing methamatically) it will throw an error, suggesting that the wrong type has been passed
 ```
Uncaught exception: hl.types.ArrayBytes_Int has no method isZero
Called from thx.bigint.Big.multiply(thx/bigint/Big.hx:126)
Called from $Main.main(Main.hx:10)
Called from .init(?:1)
Error: Command failed with error 1
```
