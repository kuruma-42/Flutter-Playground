import 'package:flutter/material.dart';
import 'package:network_module_sample/app.dart';
import 'package:network_module_sample/network_foundation/api_service.dart';
import 'package:network_module_sample/network_foundation/network.dart';

void main() async {
  final networkManager = NetworkManager();

  // 사용자 리스트 가져오기
  final getUsersResponse = await networkManager.request(MyApi.getUsers);
  print("GET Users:\n${getUsersResponse.data}\n");

  // // 특정 사용자 정보 가져오기
  // final userDetailResponse = await networkManager.request(MyApi.getUserDetail);
  // print("GET User Detail:\n${userDetailResponse.data}\n");

  // // 사용자 생성 (POST)
  // final createUserResponse = await networkManager.request(MyApi.createUser);
  // print("POST Create User:\n${createUserResponse.data}\n");
}
