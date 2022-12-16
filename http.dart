import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart';

import 'package:flutter_application_1/post.dart';

class ApiClient {
  final client = HttpClient();

  Future<List<Post>> getPosts() async {
    final url = Uri(
      scheme: 'https',
      host: 'jsonplaceholder.typicode.com',
      path: 'posts',
    );
    final zapros = await client.getUrl(url); //чтобы работать синхронно эвейтим
    final otklik = await zapros.close(); //отправляем в сеть
    final jsonString = await otklik // стрим/ информация приходит кусками
        .transform(utf8.decoder)
        .toList();
    final jsonJoin = jsonString.join();
    final jsonchik = jsonDecode(jsonJoin) as List<dynamic>;
    final result = jsonchik
        .map((dynamic e) => Post.fromJson(e as Map<String, dynamic>))
        .toList();
    return result;
  }

  Future<Post> createPost({required String title, required String body}) async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts'); 
    final parameters = <String, dynamic>{  
      'title': title,
      'body': body,
    };
    final zapros = await client.postUrl(url);
    zapros.headers.set('Content-type', 'application/json; charset=UTF-8'); //из документации
    zapros.write(jsonEncode(parameters)); //преобразовали заготовленные параметры в джисон и записали их в запрос
    final otklik = await zapros.close(); // отправили подождали
    final jsonString = await otklik.transform(utf8.decoder).toList(); // преоброзовали ответ в массив строк
    final jsonJoin = jsonString.join(); //  склеили
    final jsonchik = jsonDecode(jsonJoin) as Map<String, dynamic>;
    final post = Post.fromJson(jsonchik); // отправили в класс Пост и джсон собрался и отправил нам экземпляр этого класса 
    return post;
  }

  Future<void> fileUpload(File file) async {
    final url = Uri.parse('https://нужныйСайт.com');

    final request = await client.postUrl(url);

    request.headers.set(HttpHeaders.contentTypeHeader, ContentType.binary);
    request.headers.add('filename', basename(file.path));
    request.contentLength = file.lengthSync();
    final fileStream = file.openRead();
    await request.addStream(fileStream);

    final httpResponse = await request.close();

    if (httpResponse.statusCode != 200) {
      throw Exception('Error uploading file');
    } else {
      return;
    }
  }
}
