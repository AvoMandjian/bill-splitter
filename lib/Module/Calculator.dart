class Calculator {
  Calculator(
      {this.leastPayed, this.mostPayed});
  int mostPayed;
  int leastPayed;
  var total;
  var payment=0;


  int getTotalAmount() {
   total = mostPayed +leastPayed;
    return total;
  }

  int getRestPayment() {
    payment = (getTotalAmount() ~/ 2) -leastPayed;
    return payment;
    
  }
}
