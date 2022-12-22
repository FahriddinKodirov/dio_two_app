import 'package:dio_two_app/view_model/mockoapp_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text("Category Page"),
        backgroundColor: Colors.blueGrey[200],
      ),
      body: Consumer<MockoappViewModel>(
        builder: (context, mockoappViewModel, child) {
          // context.read<MockoappViewModel>().fetchMockoapp();
         if (mockoappViewModel.mockoapp!.fields == null) {
            return Center(
                child: CircularProgressIndicator(
              backgroundColor: Colors.red,
              color: Colors.white,
            ));
          }
          if (mockoappViewModel.errorForUI.isNotEmpty) {
            return Center(
              child: Text(mockoappViewModel.errorForUI),
            );
          }
          
          var fields = mockoappViewModel.mockoapp!.fields;
          return SingleChildScrollView(
            child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: fields.length,
                  itemBuilder: (BuildContext context, int index) {
                   return Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                      height: MediaQuery.of(context).size.height*0.32,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blueGrey[200], 
                      ),
                      
                      child: Padding(
                        padding:  EdgeInsets.only(top: 8,left: 8,right: 9),
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,  
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text('code:',style: TextStyle(fontSize: 17,color: Colors.white),)
                            ),
                            Container(
                              child: Text('${fields[index].code}',style: TextStyle(fontSize: 17,color: Colors.white),)
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text('caption:',style: TextStyle(fontSize: 17,color: Colors.white),)
                            ),
                            Container(
                              child: Text('${fields[index].caption}',style: TextStyle(fontSize: 17,color: Colors.white),)
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Container(
                            child: Text('fullCaption:',style: TextStyle(fontSize: 17,color: Colors.white),)
                          ),
                        ),
                        Container(
                          child: Text('${fields[index].fullCaption}',style: TextStyle(fontSize: 17,color: Colors.white),)
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text('group:',style: TextStyle(fontSize: 17,color: Colors.white),)
                              ),
                              Container(
                                child: Text('${fields[index].group}',style: TextStyle(fontSize: 17,color: Colors.white),)
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text('initial_value:',style: TextStyle(fontSize: 17,color: Colors.white),)
                            ),
                            Container(
                              child: Text('${fields[index].initialValue}',style: TextStyle(fontSize: 17,color: Colors.white),)
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text('regExp:',style: TextStyle(fontSize: 17,color: Colors.white),)
                            ),
                            Container(
                              child: Text('${fields[index].regExp}',style: TextStyle(fontSize: 17,color: Colors.white),)
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text('required:',style: TextStyle(fontSize: 17,color: Colors.white),)
                            ),
                            Container(
                              child: Text('${fields[index].required}',style: TextStyle(fontSize: 17,color: Colors.white),)
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text('sort:',style: TextStyle(fontSize: 17,color: Colors.white),)
                            ),
                            Container(
                              child: Text('${fields[index].sort}',style: TextStyle(fontSize: 17,color: Colors.white),)
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text('type:',style: TextStyle(fontSize: 17,color: Colors.white),)
                            ),
                            Container(
                              child: Text('${fields[index].type}',style: TextStyle(fontSize: 17,color: Colors.white),)
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text('values:',style: TextStyle(fontSize: 17,color: Colors.white),)
                            ),
                            Container(
                              child: Text('${fields[index].values}',style: TextStyle(fontSize: 17,color: Colors.white),)
                            ),
                          ],
                        ),
                     ]),
                      )),
                   );
                  },
                )),
          );
        },
      ),
    );
  }
}
