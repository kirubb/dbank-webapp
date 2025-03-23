import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Float "mo:base/Float";


actor DBank {
  stable var currentValue : Float = 300;
  currentValue:=300;

  //let is for constants, can't change value later

  let id =1234567890;

  stable var startTime = Time.now();
  //startTime := Time.now();
  Debug.print(debug_show(startTime));

  public func topUp(amount : Float){
    currentValue+=amount;
    Debug.print(debug_show(currentValue));

  };

  public func withdraw(amount : Float){

    var tempValue : Float = currentValue - amount;
    if (tempValue >= 0) {
    currentValue-=amount;
    Debug.print(debug_show(currentValue));
    } else {
      Debug.print("Amount too large, currentValue less than 0")
    }

  };

  public query func checkBalance(): async Float {
    return currentValue;
  };

  public func compound(){
    let currentTime = Time.now();
    let timeElapsedNS = currentTime - startTime;
    let timeElapsedS = timeElapsedNS / 1000000000;
    currentValue := currentValue * (1.01 ** Float.fromInt(timeElapsedS));
    startTime := currentTime;
  };



  Debug.print(debug_show(currentValue)); //print expects string and currentValue is Nat(natural number)
}
