import 'package:code_flutter/Theme/styles/colors.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Theme/get_color_based_on_theme.dart';

class DrawerHome extends StatefulWidget {
  const DrawerHome({Key? key}) : super(key: key);

  @override
  State<DrawerHome> createState() => _DrawerHomeState();
}

class _DrawerHomeState extends State<DrawerHome> {
  List<DrawerListData> listDrawer=[];
  int indexSelected=-1;

  bool expandedDrawer=false;
  @override
  void initState() {
    listDrawer=DrawerListData.listData;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double zHeight = MediaQuery.of(context).size.height;
    final double zWidth = MediaQuery.of(context).size.width;
    return expandedDrawer? drawerTitleWithIcon(zWidth, context): drawerOnlyIcon(zWidth, context);
  }

  Widget drawerTitleWithIcon(double zWidth, BuildContext context) {
    return Container(

      width: zWidth / 1.7,
      color: getColorBasedOnTheme(context, kLBackGColor, kDBackGColor),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 8,top: 15),
            height: 80,

            /// theme color in one line
            color: getColorBasedOnTheme(
                context,
                kLBackGColorLight.withOpacity(0.4),

                ///color light
                kDBackGColorLight

              /// color Dark
            ),

            width: double.infinity,
            child: Center(
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: InkWell(
                  onTap: (){
                    expandedDrawer =!expandedDrawer;
                    setState(() {

                    });
                  },
                  child: const CircleAvatar(

                    radius: 16,
                    backgroundColor: kGreenColor,
                    child: Icon(
                      CupertinoIcons.checkmark_seal,
                      color: kWhiteColor,
                      size: 16,
                    ),
                  ),
                ),
                title: Text(
                  "FLutter Digital",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: kWhiteColor, fontSize: 18),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                const ButtonWidget(),
                Expanded(child: Column(children: [
                  ...List.generate(listDrawer.length, (index) =>ListButton(
                    onTap: () {
                      indexSelected=index;
                      setState(() {

                      });
                    },
                    title: listDrawer[index].title,
                    iconData: listDrawer[index].iconData,
                    selected: indexSelected==index,
                    iconDataSelected:listDrawer[index].iconDataSelected,
                  )),
                ],)),


                Container(
                  height: 80,
                  padding: const EdgeInsets.only(bottom: 12),
                  color: getColorBasedOnTheme(
                      context,
                      kLBackGColorLight.withOpacity(0.1) ,
                      kLightColor.withOpacity(0.03) ),
                  width: double.infinity,
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: const CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.transparent,
                      backgroundImage:AssetImage('assets/d_prof1.png'),

                    ),
                    title: Text('Sadiq Alotmy',style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14,color: kLightColor),),
                    subtitle: Text('Flutter Dev',style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14,color: kLightColor.withOpacity(0.8))),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget drawerOnlyIcon(double zWidth, BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(left: 8),
      width: zWidth / 5,
      color: getColorBasedOnTheme(context, kLBackGColor, kDBackGColor),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 15),
            height: 80,
alignment: Alignment.center,
            /// theme color in one line
            color: getColorBasedOnTheme(
                context,
                kLBackGColorLight.withOpacity(0.4),

                ///color light
                kDBackGColorLight

              /// color Dark
            ),

            width: double.infinity,
            child: InkWell(
              onTap: (){
                expandedDrawer =!expandedDrawer;
                setState(() {

                });
              },
              child: const CircleAvatar(
                radius: 16,
                backgroundColor: kGreenColor,
                child: Icon(
                  CupertinoIcons.checkmark_seal,
                  color: kWhiteColor,
                  size: 16,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    height: 50,
                    decoration: BoxDecoration(
                        color: kLightColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Center(
                      child: Icon(
                        CupertinoIcons.search,
                        color: kLightColor,
                        size: 20,
                      ),
                    ),
                  ),
                ),
                Expanded(child: Column(children: [
                  ...List.generate(listDrawer.length, (index) =>IconButton(

                    onTap: () {
                      indexSelected=index;
                      setState(() {

                      });
                    },
                    iconData: listDrawer[index].iconData,iconDataSelected: listDrawer[index].iconDataSelected,selected:  indexSelected==index,)),
                ],)),


                Container(
                  height: 80,
                  padding: const EdgeInsets.only(bottom: 12),
                  color: getColorBasedOnTheme(
                      context,
                      kLBackGColorLight.withOpacity(0.1) ,
                      kLightColor.withOpacity(0.03) ),
                  width: double.infinity,
                  child:  const Center(
                    child: CircleAvatar(
backgroundColor: Colors.transparent,
                      radius: 30,
                      backgroundImage:AssetImage('assets/d_prof1.png'),


                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class IconButton extends StatelessWidget {
  const IconButton({
    Key? key, required this.iconData, required this.iconDataSelected, required this.onTap, required this.selected,

  }) : super(key: key);

  final IconData iconData,iconDataSelected;
  final Function() onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Container(
          height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),

            decoration: BoxDecoration(
                color: getColorBasedOnTheme(
                    context,
                    selected ? kLightColor.withOpacity(0.1) : Colors.transparent,
                    selected ? kGreenColor.withOpacity(0.1) : Colors.transparent),
                borderRadius: BorderRadius.circular(8)),
          child: Icon(
            selected ? iconDataSelected : iconData,
            color: getColorBasedOnTheme(
                context,
                selected ? kWhiteColor : kLightColor.withOpacity(0.7),
                selected ? kGreenColor : kLightColor.withOpacity(0.7)),
            size: 20,
          ),
        ),
      ),
    );
  }
}

class ListButton extends StatelessWidget {
  final Function() onTap;
  final String title;
  final IconData iconData, iconDataSelected;
  final bool selected;

  const ListButton({
    Key? key,
    required this.onTap,
    required this.title,
    required this.iconData,
    required this.selected,
    required this.iconDataSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(4),
          height: 50,
          decoration: BoxDecoration(
              color: getColorBasedOnTheme(
                  context,
                  selected ? kLightColor.withOpacity(0.1) : Colors.transparent,
                  selected ? kGreenColor.withOpacity(0.1) : Colors.transparent),
              borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(
                    selected ? iconDataSelected : iconData,
                    color: getColorBasedOnTheme(
                        context,
                        selected ? kWhiteColor : kLightColor.withOpacity(0.7),
                        selected ? kGreenColor : kLightColor.withOpacity(0.7)),
                    size: 20,
                  ),
                ),
                Expanded(
                  child: Text(title,
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: getColorBasedOnTheme(
                              context,
                              selected
                                  ? kWhiteColor
                                  : kLightColor.withOpacity(0.7),
                              selected
                                  ? kGreenColor
                                  : kLightColor.withOpacity(0.7)))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      child: Container(
        padding: const EdgeInsets.all(4),
        height: 50,
        decoration: BoxDecoration(
            color: kLightColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              CupertinoIcons.search,
              color: kLightColor,
              size: 20,
            ),
            Expanded(
                child: TextFormField(
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(color: kWhiteColor),
              decoration: InputDecoration(
                hintText: 'search',
                hintStyle: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(color: kLightColor.withOpacity(0.6)),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class DrawerListData {
  final String title;
  final IconData iconData, iconDataSelected;

  DrawerListData({required this.title,required this.iconData,required this.iconDataSelected});
  
static List<DrawerListData> listData=[
   DrawerListData(title: 'Dashboard', iconData: CupertinoIcons.home, iconDataSelected: Icons.home),
   DrawerListData(title: 'Team', iconData: CupertinoIcons.person_2, iconDataSelected:CupertinoIcons.person_2_alt),
   DrawerListData(title: 'Chat', iconData: CupertinoIcons.chat_bubble, iconDataSelected:CupertinoIcons.chat_bubble_fill),
   DrawerListData(title: 'Followers', iconData: CupertinoIcons.person_add, iconDataSelected:CupertinoIcons.person_add_solid),
   DrawerListData(title: 'Following', iconData: CupertinoIcons.person, iconDataSelected:CupertinoIcons.person_alt),
   DrawerListData(title: 'Saved', iconData: Icons.favorite_border, iconDataSelected:Icons.favorite),
   DrawerListData(title: 'New Work', iconData: Icons.add_box_outlined, iconDataSelected:Icons.add_box_rounded),
 ];
}
