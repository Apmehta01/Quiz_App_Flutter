import 'package:flutter/material.dart';

class HelperSnackBar{
  /**
   *Name: [helperSnackBar.dart] showSnackbarOnMaterialApp()
   *<br>  Created By Arpan Mehta on 25-05-23
   *<br>  Modified By Arpan Mehta on 25-05-23
   *<br>  Purpose: This method will show snackbar on material app
   *@param text
   **/
    static showSnackbarOnMaterialApp(String text){
      return SnackBar(
        duration: Duration(milliseconds: 2000),
        backgroundColor: Colors.green,
        // behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        action: SnackBarAction(
          label: 'return',
          textColor: Colors.white,
          onPressed: () {},
        ),
        content: Text(text),
      );
    }

    /**
     *Name: [helperSnackBar.dart] showSnackbarOnMaterialApp()
     *<br>  Created By Arpan Mehta on 25-05-23
     *<br>  Modified By Arpan Mehta on 25-05-23
     *<br>  Purpose: This method will show snackbar inside material App other screen class.
     *@param context
     *@param text
     **/
    static showSnackbarwithContext(BuildContext context, String text){
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: Duration(milliseconds: 2000),
          backgroundColor: Colors.green,
          // behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          action: SnackBarAction(
            label: 'return',
            textColor: Colors.white,
            onPressed: () {},
          ),
          content: Text(text),
        ),
      );
    }
}