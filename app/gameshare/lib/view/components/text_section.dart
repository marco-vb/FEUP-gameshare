import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gameshare/consts/app_colors.dart';
import 'package:gameshare/view/components/section_title.dart';
import "dart:convert";



class TextSection extends StatefulWidget {
  TextSection({
    super.key,
    required this.title,
    required this.text,
  });
  final String title;
  final String text;

  @override
  State<TextSection> createState() => _TextSection(title: title,text: text);

}
class _TextSection extends State<TextSection>{

  _TextSection({
    required this.title,
    required this.text,
  });
  @override
  void initState() {
    super.initState();
  }

  String Html(String html){
    String withBreaks = html.replaceAll("<br />", '\n');
    RegExp exp = RegExp(r"<[^>]*>",multiLine: true,caseSensitive: true);
    String withoutElements = withBreaks.replaceAll(exp, ' ');
    String withApostrophe = withoutElements.replaceAll("&#39;", "'");
    const utf= Utf8Decoder();

    String withoutSpecialChars= utf.convert(withApostrophe.runes.toList());
    return withoutSpecialChars;
  }

  final String title;
  final String text;
  late bool showMore=false;
  List<Widget> getText(){
    String mainText;
    String buttonText;
    if(showMore){
      mainText=text;
      buttonText="Show less";
    }
    else{
      mainText= text.substring(0,300)+"...";
      buttonText="Show More";
    }
    return [
      Text(
          Html(mainText),
          style: const TextStyle(fontSize: 20)
      ),
      SizedBox(height: 20,),
      ElevatedButton(
          onPressed: (){
            setState(() {
              showMore=!showMore;
            });
          },
          child:Text(buttonText,textAlign: TextAlign.center),
        style: ButtonStyle(
          alignment: Alignment.center,
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              )
          ),
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left: 40,right: 40,top:5,bottom: 5)),
        ),
      )
    ];
  }


  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(10),
      child: Column( children: [
        SectionTitle(title: title),
        SizedBox(height: 15,),
        ...getText(),


      ],
      ),
    );
  }


}