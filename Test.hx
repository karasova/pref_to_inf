using Lambda;

class Test{
    static public function main():Void {
        var flag:Bool = false;
        var ops:Array<String> = ["+", "-", "*", "/"];
        var opers:Array<String> = [];
        var result:String = "";

        trace("Input text: ");
        var line:String=Sys.stdin().readLine();
        var exp = line.split(" ");


        for (sym in exp){
            if (ops.has(sym)) {
                opers.push(sym);
            }
            else {
                if (flag) {
                    var zn = opers.shift();
                    result += zn + " " + sym + " ";
                }
                else {
                    result += sym + " ";
                    flag = true;
                }
            }
        }
        trace(result);
    }
}