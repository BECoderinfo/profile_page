import 'package:flutter/material.dart';

class detailpage extends StatefulWidget {
  const detailpage({super.key});

  @override
  State<detailpage> createState() => _detailpageState();
}

class _detailpageState extends State<detailpage> {

  int _quantity = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Center(
            child: const Text("Detail product"),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: Colors.redAccent,
              ),
            )
          ],
        ),
        body: Stack(alignment: Alignment.bottomCenter, children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/img/bata.png",
                        width: 200,
                        height: 200,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade50,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Expanded(
                                      child: Text(
                                        "Brown Bata Men Casual Shoes",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 14),
                                      decoration: BoxDecoration(
                                          color: Colors.deepOrange,
                                          borderRadius: BorderRadius.circular(8)),
                                      child: Text(
                                        "\$190.0",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "The range of sneakers at Bata is perfect for those seeking casual and sporty footwear options.",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                  ),
                                ),
            
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        height: 60,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(999)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: (){
                                setState(() {
                                  if(_quantity > 0){
                                    _quantity--;
                                  }
                                });
                              },
                              child: CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.grey.shade100,
                                child: Icon(Icons.remove),
                              ),
                            ),
                            Text(
                              "$_quantity",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  _quantity++;
                                });
                              },
                              child: CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.grey.shade100,
                                child: Icon(Icons.add),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.grey.shade900),
                            fixedSize: MaterialStateProperty.all(
                              const Size(double.infinity, 65),
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.red),
                              ),
                            ),
                          ),
                          child: Text(
                            "Add to Cart",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
