import 'package:flutter/material.dart';
import './main_drawer.dart ';

class FiltersScreen extends StatefulWidget {
  static const routnam = '/filters';

  final Function savefilter;
  final Map<String, bool> currentfilter;
  FiltersScreen(this.currentfilter, this.savefilter);

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  var _glutenfree = false;
  var _vegtarian = false;
  var _veagn = false;
  var _loctosefree = false;

  @override
  void initState() {
    _glutenfree = widget.currentfilter['gluten']!;
    _loctosefree = widget.currentfilter['lactose']!;
    _veagn = widget.currentfilter['vegan']!;
    _vegtarian = widget.currentfilter['vegetarain']!;

    // TODO: implement initState
    super.initState();
  }

  Widget _builtswitchlisttile(String title, String description,
      bool currentvalue, final Function(bool) updatedvalue) {
    return SwitchListTile(
      title: Text(title),
      value: currentvalue,
      subtitle: Text(description),
      onChanged: updatedvalue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldMessengerKey,
      appBar: AppBar(
        title: Text('Filters!'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              final selectedfilters = {
                'gluten': _glutenfree,
                'lactose': _loctosefree,
                'vegan': _veagn,
                'vegetarain': _vegtarian,
              };
              widget.savefilter(selectedfilters);
              scaffoldMessengerKey.currentState?.showSnackBar(
                SnackBar(
                  content: Text('Filters saved!'),
                  duration: Duration(seconds: 2),
                ),
              );
            },
            icon: Icon(Icons.save),
          )
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              'Adjust your Meal Selection!',
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _builtswitchlisttile(
                  'Gluten-free',
                  'Only include gluten-free meals!',
                  _glutenfree,
                  (newValue) {
                    setState(() {
                      _glutenfree = newValue;
                    });
                  },
                ),
                _builtswitchlisttile(
                  'Lactose-free',
                  'Only include Lactose-free meals!',
                  _loctosefree,
                  (newValue) {
                    setState(() {
                      _loctosefree = newValue;
                    });
                  },
                ),
                _builtswitchlisttile(
                  'Vegan',
                  'Only include vegan meals!',
                  _veagn,
                  (newValue) {
                    setState(() {
                      _veagn = newValue;
                    });
                  },
                ),
                _builtswitchlisttile(
                  'vegetarain',
                  'Only include vegtarian meals!',
                  _vegtarian,
                  (newValue) {
                    setState(() {
                      _vegtarian = newValue;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
