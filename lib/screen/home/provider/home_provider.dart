import 'package:advance_exam/screen/home/model/home_model.dart';
import 'package:advance_exam/utils/api_helper.dart';
import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier
{
  QuotesModel? model;
  Future<void> getdata()
  async {
    QuotesModel? m1= await APIHelper.helper.quotesdata();
    if(m1!=null)
      {
        model=m1;
        notifyListeners();
      }
  }
  void deleteContact(int r)
  {
    model!.resultlist!.removeAt(r);
    notifyListeners();
  }

}
