
import 'dart:io';

class HealthDocumentation{
   File testDoc;
   DateTime date;
   String fullName;
   HealthDocumentation({this.testDoc,this.fullName,this.date});

   Future<bool> uploadResult()async{
     try{
       return true;
     }
     catch(e){
       return false;
     }
   }
}