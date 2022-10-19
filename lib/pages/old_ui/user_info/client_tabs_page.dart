import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/pages/old_ui/client_orders/client_orders_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class ClientTabPage extends StatefulWidget {
  final AppUser user;
  int colorVal;
  ClientTabPage(this.colorVal, this.user);

  _ClientTabPageState createState() => _ClientTabPageState();
}

class _ClientTabPageState extends State<ClientTabPage> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);
    _tabController!.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
      widget.colorVal = 0xffff5722;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
                automaticallyImplyLeading: false,
                bottom: PreferredSize(
                    preferredSize: Size.fromHeight(-5),
                    child: TabBar(
                        controller: _tabController,
                        isScrollable: true,
                        indicatorWeight: 4.0,
                        indicatorColor: Color(0xffff5722),
                        unselectedLabelColor: Colors.grey,
                        tabs: <Widget>[
                          Tab(
                              child: Container(
                                  child: Text('Orders',
                                      style: TextStyle(
                                          color: _tabController!.index == 0 ? Color(widget.colorVal) : Colors.white,
                                          fontSize: 18)))),
                          Tab(
                              child: Container(
                            child: Text('Other',
                                style: TextStyle(
                                    color: _tabController!.index == 1 ? Color(widget.colorVal) : Colors.white,
                                    fontSize: 18)),
                          ))
                        ]))),
            body: TabBarView(controller: _tabController, children: <Widget>[
              Container(height: 200.0, child: ClientOrdersPage(client: widget.user)),
              Container(height: 200.0, child: Center(child: Text('Other'))),
            ])));
  }
}
