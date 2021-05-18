
import 'package:flutter/material.dart';
import 'package:gp/GlobalComponents/searchBarWidget.dart';
import 'package:gp/pages/Explore/components/Body.dart';

import '../../../Size_Config.dart';
import '../../../constraints.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: kSecondaryliteColor.withOpacity(0.5),
            title: Padding(
              padding: EdgeInsets.only(top: 8.0),
              child:SearchbarWidget(color: kliteColor),
            ),
            bottom: TabBar(

              isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 6.0,
              onTap: (index){
                switch(index){

                }
              },
              tabs: [
                Tab(
                  child: Container(
                    child: Row(
                      children: [
                        Icon(Icons.explore,size: 20,),
                        Text(
                          ' Explore',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: getProptionateScreenHeight(18.0)
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Row(
                      children: [
                        Icon(Icons.recommend,size: 20,),
                        Text(
                          ' Recomended',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: getProptionateScreenHeight(18.0)
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Row(
                      children: [
                        Icon(Icons.bookmark,size: 20,),
                        Text(
                          ' Saved',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: getProptionateScreenHeight(18.0)
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),

          ),
          body: Body(),
        ),
      ),

    );
  }
}
