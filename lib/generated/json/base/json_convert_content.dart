// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:flutter_use/bean/test/net_list_bean.dart';
import 'package:flutter_use/generated/json/net_list_bean.g.dart';
import 'package:flutter_use/bean/test/net_object_bean.dart';
import 'package:flutter_use/generated/json/net_object_bean.g.dart';

JsonConvert jsonConvert = JsonConvert();

class JsonConvert {

  T? convert<T>(dynamic value) {
    if (value == null) {
      return null;
    }
    return asT<T>(value);
  }

  List<T?>? convertList<T>(List<dynamic>? value) {
    if (value == null) {
      return null;
    }
    try {
      return value.map((dynamic e) => asT<T>(e)).toList();
    } catch (e, stackTrace) {
      print('asT<$T> $e $stackTrace');
      return <T>[];
    }
  }

  List<T>? convertListNotNull<T>(dynamic value) {
    if (value == null) {
      return null;
    }
    try {
      return (value as List<dynamic>).map((dynamic e) => asT<T>(e)!).toList();
    } catch (e, stackTrace) {
      print('asT<$T> $e $stackTrace');
      return <T>[];
    }
  }
  T? asT<T extends Object?>(dynamic value) {
    if (value is T) {
      return value;
    }
		final String type = T.toString();
    try {
      final String valueS = value.toString();
      if (type == "String") {
        return valueS as T;
      } else if (type == "int") {
        final int? intValue = int.tryParse(valueS);
        if (intValue == null) {
          return double.tryParse(valueS)?.toInt() as T?;
        } else {
          return intValue as T;
        }      } else if (type == "double") {
        return double.parse(valueS) as T;
      } else if (type ==  "DateTime") {
        return DateTime.parse(valueS) as T;
      } else if (type ==  "bool") {
        if (valueS == '0' || valueS == '1') {
          return (valueS == '1') as T;
        }
        return (valueS == 'true') as T;
      } else {
        return JsonConvert.fromJsonAsT<T>(value);
      }
    } catch (e, stackTrace) {
      print('asT<$T> $e $stackTrace');
      return null;
    }
  } 
	//Go back to a single instance by type
	static M? _fromJsonSingle<M>(Map<String, dynamic> json) {
		final String type = M.toString();
		if(type == (NetListBean).toString()){
			return NetListBean.fromJson(json) as M;
		}
		if(type == (NetObjectBean).toString()){
			return NetObjectBean.fromJson(json) as M;
		}
		if(type == (NetObjectDatas).toString()){
			return NetObjectDatas.fromJson(json) as M;
		}

		print("$type not found");
	
		return null;
}

  //list is returned by type
	static M? _getListChildType<M>(List<dynamic> data) {
		if(<NetListBean>[] is M){
			return data.map<NetListBean>((e) => NetListBean.fromJson(e)).toList() as M;
		}
		if(<NetObjectBean>[] is M){
			return data.map<NetObjectBean>((e) => NetObjectBean.fromJson(e)).toList() as M;
		}
		if(<NetObjectDatas>[] is M){
			return data.map<NetObjectDatas>((e) => NetObjectDatas.fromJson(e)).toList() as M;
		}

		print("${M.toString()} not found");
	
		return null;
}

  static M? fromJsonAsT<M>(dynamic json) {
		if(json == null){
			return null;
		}
		if (json is List) {
			return _getListChildType<M>(json);
		} else {
			return _fromJsonSingle<M>(json as Map<String, dynamic>);
		}
	}
}