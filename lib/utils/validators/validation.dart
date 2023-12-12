class Evalidator{
  static String? validateEmail(String? value)
  {
    if(value == null || value.isEmpty)
    {
      return 'Email is Required.';
    }
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if(!emailRegExp.hasMatch(value))
    {
      return "Invalid Email Address.";
    }

    return null;
  }

  static String? validatepassword(String? value)
  {
    if(value == null || value.isEmpty)
    {
      return "Password is required.";
    }

    if(value.length < 8)
    {
      return "Password must be 8 character long.";
    }

    if(!value.contains(RegExp(r'[A-Z]'))){
      return "Password must contain  atleast one Uppercase letter.";
    }

    if(!value.contains(RegExp(r'[0-9]'))){
      return "Password must contain atleast one number.";
    }

    if(!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))){
      return "Password must contain atleast one special character.";
    }
    return null;
  }

  static String? validatePhoneNumber(String? value){
    if(value == null || value.isEmpty)
    {
      return "Phone Number is required.";
    }

    final phoneRegExp = RegExp(r'^\d{10}$');

    if(!phoneRegExp.hasMatch(value))
    {
      return "Invalid Phone Number foemat (10 number required)";
    }
    return null;
  }

}