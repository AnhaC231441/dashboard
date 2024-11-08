import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  //const HomePage({super.key});
  var height,width;
  List imgData=[
    "assets/images/customers.png",
    "assets/images/suppliers.png",
    "assets/images/products.png",
    "assets/images/pos.png",
    "assets/images/expense.png",
    "assets/images/orders.png",
  ];

  List titles=[
    "CUSTOMERS",
    "SUPPLIERS",
    "PRODUCTS",
    "POS",
    "EXPENSE",
    "ORDERS",
  ];



  @override
  Widget build(BuildContext context) {
    height=MediaQuery.sizeOf(context).height;
    width=MediaQuery.sizeOf(context).width;

    return Scaffold(
       body:SingleChildScrollView(
         child: Container(
             color: Colors.green,
            // height: height,
             width: width,
             child: Column(

               children: [
                 Container(
                   decoration: BoxDecoration(),
                   height: height*0.23,
                   width: width,
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Padding(
                         padding:  EdgeInsets.only(
                           top: 30,
                           left: 20,
                           right: 20,
                         ),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.end,

                           children: [
                             GestureDetector(
                               onTap: (){},

                                 child: Icon(
                                   Icons.translate,
                                     color: Colors.black,
                                     size: 30,

                                   ),

                             ),

                           ],
                         ),
                      ),
                       Padding(
                         padding:EdgeInsets.only(
                           top: 10 ,
                           left: 20,
                        ),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("Online Soft Sell",
                             style: TextStyle(
                               fontSize: 20,
                               color: Colors.white,
                               fontWeight: FontWeight.w500,
                               letterSpacing:1.5,
                             ),),
                             SizedBox(height: 5),
                             Text("Hello,Admin",
                               style: TextStyle(
                                 fontSize: 15,
                                 color: Colors.white,
                                 fontWeight: FontWeight.w500,
                                 letterSpacing:1,
                               ),)
                           ],
                         ),
                       ),
                     ],
                   ),
                 ),

                 SingleChildScrollView(
                   child: Container(
                     decoration: BoxDecoration(
                       color: Colors.white,
                      // borderRadius: BorderRadius.only(
                        // topLeft: Radius.circular(10),
                        // topRight: Radius.circular(10),
                      // ),
                     ),

                    // height: height,
                     width: width,
                     padding: EdgeInsets.only(bottom:20),
                     child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        childAspectRatio: 1.1,
                          mainAxisSpacing: 17,
                        ),
                       shrinkWrap: true,
                       physics: NeverScrollableScrollPhysics(),
                       itemCount: imgData.length,
                       itemBuilder: (context,index){
                          return InkWell(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 6,horizontal: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color:Colors.black12,

                                      blurRadius: 10,
                                    ),
                                 ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(imgData[index],
                                  width: 180,
                                  ),
                                  Text(
                                    titles[index],
                                    style: TextStyle(
                                      fontSize: 20,color: Colors.green,fontWeight: FontWeight.w600

                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );

                       },

                     ),
                   ),
                 ),
               ],
             ),
           ),
       ),
       //),
    );
  }
}
