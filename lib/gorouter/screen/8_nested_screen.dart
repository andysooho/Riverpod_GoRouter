import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NestedScreen extends StatelessWidget {
  final Widget child;

  const NestedScreen({
    required this.child,
    Key? key,
  }) : super(key: key);

  int getIndex(BuildContext context){
    if(GoRouterState.of(context).location == '/root/nested/a'){
      return 0;
    }
    else if(GoRouterState.of(context).location == '/root/nested/b'){
      return 1;
    }
    else{
      return 2;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(GoRouterState.of(context).location),
      ),
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: getIndex(context),
        onTap: (index) {
          switch (index) {
            case 0:
              context.go('/root/nested/a');
              break;
            case 1:
              context.go('/root/nested/b');
              break;
            case 2:
              context.go('/root/nested/c');
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'person',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'notifications',
          ),
        ],
      ),
    );
  }
}
