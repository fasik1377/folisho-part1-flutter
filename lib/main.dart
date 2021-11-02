import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:folisho/rent.dart';
import 'package:folisho/sale.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Folisho',
        home: Builder(
          builder: (context) => Container(
            //margin: const EdgeInsets.symmetric(vertical: 20.0),

            color: Colors.white,
            alignment: Alignment.center,
            child: Column(children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // const Padding(padding: EdgeInsets.symmetric(vertical: 300),),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (content) => const Rent()));
                      },
                      child: Image.asset(
                        'assets/house-for-rent.png',
                        height: 250,
                        scale: 5,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (content) => const Sale()));
                      },
                      child: Image.asset(
                        'assets/houseforsale.png',
                        height: 250,
                      ),
                    ),
                  ),
                ],
              ),
              const Text(
                "የሚከራይ ቤት           የሚሸጥ ቤት",
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff5F6AC4),
                    decoration: TextDecoration.none),
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: const Text(
                  "ይህ 'ፎሊሾ' የተንቀሳቃሽ ስልክ መተግበሪያ ተከራይ እና አከራይን፣ ሻጭና ገዢን በአንድ መስኮት የሚያገናኝና ልፋትን፣ የጊዜና የገንዘብ ብክነትን የሚቀንስ መተግበሪያ ነው።\n\nይህ መተግበሪያ ሁለት አይነት ተጠቃሚዎች አሉት፦\n1. ደላላ\n2. መደበኛ ተጠቃሚ\n\nመደበኛ ተጠቃሚዎች የሚከራይ ቤት ወይንም የሽያጭ ቤት እንደፍላጎቱ በመምረጥ የቤቱን ሁኔታ በፎቶ የተደገፈ ማስረጃ፣ አድራሻው፣ ዋጋው... ወዘተ በማየት ይከራያል ወይም ይገዛል። ደላላው ደግሞ የቤቱን ዋጋ ፎቶና አድራሻ ወደ ሲስተሙ በማስገባት ጥቅም ላይ ያውለዋል።",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blueGrey,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.start,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                //  height: 50,
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "ከላይ የተገለጸውን አገልግሎት ለመጠቀም እንደምርጫዎ ከገጹ መጀመሪያ ያለውን ምስል ይጫኑ",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff5F6AC4),
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center,
              ),
            ]),
          ),
        ));
  }
}
