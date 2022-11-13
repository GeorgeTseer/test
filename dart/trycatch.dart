import 'dart:io';

class NoNumberString {
  final String noNumberString;
  
  NoNumberString(this.noNumberString);
  @override
  String toString() {
    return "Некоректная строка";
  } 
}

class NulevoiZnamenatel {
  @override
  String toString() {
    return "Нельзя делить на ноль";
  }
}

double div(String a, String b) {
  final chislitel = int.tryParse(a);
  final znamenatel = int.tryParse(b);

  if (chislitel  == null) {
    throw NoNumberString(a);
  }
  
   if (znamenatel  == null) {
    throw NoNumberString(a);
  }

  if (znamenatel == 0) {
    throw NulevoiZnamenatel();
  }
  final resultat = (chislitel / znamenatel);
  return resultat;
}

void main() {
 try {
   final c = div("10","0");
   print(c);
 } on NoNumberString catch (error){
  print(error);
 } on NulevoiZnamenatel catch (error) {
  print(error);
 } catch (error) {
  print("ошибка : $error");
 }
 finally {print("The End");}
}
