

import 'package:get/get.dart';

import '../models/allpostModel.dart';
import '../utility/networkResponse.dart';
import '../utility/networkcall.dart';
import '../utility/urls.dart';

class AllpostController extends GetxController{
  bool _getAllpostinProgress = false;

  AllpostModel _allpostModelData = AllpostModel();

  String _errorMessage = '';


  AllpostModel get allpostModelData => _allpostModelData;

  bool get getAllpostinProgress => _getAllpostinProgress;

  String get errorMessage => _errorMessage;


  Future<bool> getAllpost()async{
    _getAllpostinProgress = true;
    update();
    final Networkresponse response = await Networkcall().postRequest(Urls.allpost, {});
    _getAllpostinProgress = false;
    if(response.issuccess){
      _allpostModelData = AllpostModel.fromJson(response.responseJson!);
      update();
      return true;
    }else{
      _errorMessage='Fetch data Failed';
      update();
      return false;
    }

  }

}