import 'package:flutter/material.dart';
import 'package:flutter_paginated_table/myData.dart';
 class HomePage extends StatefulWidget {
   const HomePage({Key? key}) : super(key: key);
 
   @override
   State<HomePage> createState() => _HomePageState();
 }
 
 class _HomePageState extends State<HomePage> {
   final DataTableSource _data=  MyData();
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         elevation: 0,
         title: Text("Paginated Table"),
         centerTitle: true,
       ),
       body: Column(
         children: [
           PaginatedDataTable(
             header:  Center(child:
               Text("My DataTable",
               style: TextStyle(
                 fontWeight: FontWeight.bold
               ),),),
               columnSpacing: 100,
               horizontalMargin: 60,
               rowsPerPage: 11,
               columns: [
             DataColumn(label: Text("ID")),
             DataColumn(label: Text("Name")),
             DataColumn(label: Text("Price"))
           ], source: _data)
         ],
       ),
     );
   }
 }
 