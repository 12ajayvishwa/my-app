import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  TextEditingController textEditingController = new TextEditingController();

  Razorpay _razorpay;


  int _amount = 24;
  
  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  void openCheckout() async {
    var options = {
      'key' : "rzp_test_AlRMnLRZtMdiJ0",
      'amount' : textEditingController.text,
      'name' : 'Shaiq',
      'description' : 'Payment',
      'prefill' : {'contact' : '8888888888','email':'test@razorpay.com'},
      'external' : {
        'wallets' : ['paytm']
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint(e);
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    Fluttertoast.showToast(
      msg: "SUCCESS: " + response.paymentId, timeInSecForIos: 4);
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    Fluttertoast.showToast(
        msg: "ERROR: " + response.code.toString() + " - " + response.message,
    timeInSecForIos: 4);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    Fluttertoast.showToast(
        msg: "EXTERNAL_WALLET: " + response.walletName, timeInSecForIos: 4);
  }

  @override
  Widget build(BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0.0,
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              title: Text('Cart',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xFF545D68))),
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                      Icons.notifications_none, color: Color(0xFFF17532)),
                  onPressed: () {},
                ),
              ],
            ),

            body: Column(
              children: [
                TextField(
                  controller: textEditingController,
                  decoration: InputDecoration(
                    hintText: "amount to pay"
                  ),
                ),
                SizedBox(height: 12,),
                RaisedButton(
                  color: Colors.blue,
                    child: Text("Donate Now",style: TextStyle(
                      color: Colors.white
                    ),),
                    onPressed: () {
                    openCheckout();
                    })
              ],
            )
          );

  }
}
