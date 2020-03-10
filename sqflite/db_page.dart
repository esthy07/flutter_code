import 'package:flutter/material.dart';
import 'package:async/';
import 'Db_helper.dart';
import 'Utilisateur.dart';


class DBTestPage extends StatefulWidget{
  final String title;

  DBTestPage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _DBTestPageState();
  }
}

class _DBTestPageState extends State<DBTestPage> {
  //

  Future <List<Utilisateur>> utilisateurs;
  textEditingController controller = TextEditingController();
  String name;
  int curUserId;

  final formKey = new GlobalKey<FormState>();
  var dbHelper;
  bool isUpdating;

  @override
  void iniState {
    super.initState();
    dbHelper =  DBHelper();
    isUpdating = false;
  }

  refreshList() {
    setState(() {
      utilisateurs = dbHelper.getUtilisateurs;
    });
  }

  clearName() {
    controller.text = '';
  }

  vlidate() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      if (isUpdating) {
        Utilisateur e = Utilisateur(curUserId, name);
        dbHelper.update(e);
        setState(() {
          isUpdating = false;
        });
        clearName();
      } else {
        Utilisateur e = Utilisateur(null, name);
        dbHelper.save(e);
      }
    }
  }

  form() {
    return Form(
      key: formKey,
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              controller: controller,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Name',
              ),
              validator: (val) => val.length == 0 ? 'Enter Name' : null,
              onSaved: (val) => name = val,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                    onPressed: validate,
                    child: Text(isUpdating ? 'UPDATE' : 'ADD'),
                ),
                FlatButton(
                  onPressed: () {
                    setState(() {
                      isUpdating = false;
                    });
                    clearName();
                  },
                  child: Text('CANCEL'),
                ),
              ],
            )
          ],
        ),
      )
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('petite demo de base de donnée'),
      ),
    );
  }
}