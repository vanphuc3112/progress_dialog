import 'package:flutter/material.dart';
import 'package:progress_dialog/progress_dialog.dart';

ProgressDialog pr;

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  var percentage = 0.0;

  @override
  Widget build(BuildContext context) {
//    pr = new ProgressDialog(context, ProgressDialogType.Normal);
    pr = new ProgressDialog(context, ProgressDialogType.Download);
    pr.setMessage('Downloading file...');
    return Scaffold(
      body: Center(
        child: RaisedButton(
            child: Text(
              'Show Dialog',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
            onPressed: () {
              pr.show();
              /*Future.delayed(Duration(seconds: 2)).then((onvalue) {
                percentage = percentage + 30.0;
                print(percentage);
                pr.update(progress: percentage, message: "Please wait...");
                Future.delayed(Duration(seconds: 2)).then((value) {
                  percentage = percentage + 30.0;
                  pr.update(
                      progress: percentage, message: "Few more seconds...");
                  print(percentage);
                  Future.delayed(Duration(seconds: 2)).then((value) {
                    percentage = percentage + 30.0;
                    pr.update(progress: percentage, message: "Almost done...");
                    print(percentage);

                    Future.delayed(Duration(seconds: 2)).then((value) {
                      pr.hide();
                      percentage = 0.0;
                    });
                  });
                });
              });*/
              Future.delayed(Duration(seconds: 10)).then((onValue){
                print("PR status  ${pr.isShowing()}" );
                if(pr.isShowing())
                  pr.hide();
                print("PR status  ${pr.isShowing()}" );
              });

            }),
      ),
    );
  }
}
