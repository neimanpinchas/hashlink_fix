import thx.BigInt;

class Main {
    static function main(){
        var n=BigInt.fromStringWithBase("12345678912345678912345678909",10);
        trace(n.toString());
        trace(n*n);
        n=BigInt.fromInt(613).pow(613);
        trace(n.toString());
        trace(n*n);

    }
}