import 'package:advance_exam/screen/home/provider/home_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? providerR;
  HomeProvider? providerW;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<HomeProvider>().getdata();
  }

  @override
  Widget build(BuildContext context) {
    providerR = context.read<HomeProvider>();
    providerW = context.watch<HomeProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Qutes"),
        centerTitle: true,
      ),
      body: providerW!.model==null?Center(child: CircularProgressIndicator(),):
      ListView.builder(
        itemCount: providerW!.model!.resultlist!.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(5),
            height: 180,
            width: 170,
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(20),
              color: Colors.black12.withOpacity(0.1)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(" ${providerW!.model!.resultlist![index].content}",style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                Text("- ${providerW!.model!.resultlist![index].author}",style: TextStyle(fontWeight: FontWeight.bold),),
                IconButton(
                    onPressed: () {
                      showDialog(context: context, builder: (context) {
                        return AlertDialog(
                          title: Text("Are You Sure!"),
                          actions: [
                           ElevatedButton(onPressed: () {
                             providerR!.deleteContact(index);
                             Navigator.pop(context);
                           }, child: Text("Yes")),
                            ElevatedButton(onPressed: () {
                              Navigator.pop(context);
                            }, child: Text("No")),
                          ],
                        );
                      },);
                    },
                    icon: Icon(Icons.delete) ),
              ],
            ),
          );
        },
      ),
    );
  }
}
