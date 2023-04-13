import 'dart:math';

import'package:flutter/material.dart';
class MyData extends DataTableSource{
  final List<Map<String, dynamic>> _data= List.generate(200, (index){
    return
        {
          "id": index,
          "title":"Item $index",
          "price":Random().nextInt(10000)

        };
  }
  );
  @override
  DataRow? getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(_data[index]['id'].toString())),
      DataCell(Text(_data[index]['title'].toString())),
      DataCell(Text(_data[index]["price"].toString()))
    ]);
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount =>_data.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
  
}