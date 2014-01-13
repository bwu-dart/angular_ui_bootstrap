library bootstrap_angular.demo.alert;

import 'package:angular/angular.dart' as ng;

@ng.NgController(
    selector: '[ng-controller=alert-demo-ctrl]',
    publishAs: 'ctrl')
class AlertDemoController {

  List<Map<String,String>> alerts = [
    { 'type': 'danger', 'msg': 'Oh snap! Change a few things up and try submitting again.' },
    { 'type': 'success', 'msg': 'Well done! You successfully read this important alert message.' }
  ];

  AlertDemoController() {
    print('AlertDemoController');
  }

  void addAlert() {
    alerts.add({'msg': 'Another alert!'});
  }

  void closeAlert(int index) {
    if(alerts.length > index) {
      alerts.removeAt(index);
    } else {
      print('AlertDemoController.closeAlert($index (invalid!))');
    }
  }
}