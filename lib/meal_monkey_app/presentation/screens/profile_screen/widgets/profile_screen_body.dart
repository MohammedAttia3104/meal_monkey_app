import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_monkey_app/auth_bloc/auth_bloc.dart';
import 'package:meal_monkey_app/constants/app_strings.dart';
import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/widgets/Custom_Text_Form_Field.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/widgets/custom_rounded_button.dart';

class ProfileScreenBody extends StatefulWidget {
  const ProfileScreenBody({super.key});

  @override
  State<ProfileScreenBody> createState() => _ProfileScreenBodyState();
}

class _ProfileScreenBodyState extends State<ProfileScreenBody> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final mobileNoController = TextEditingController();
  final addressController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final nameFocusNode = FocusNode();
  final mobileNoFocusNode = FocusNode();
  final addressFocusNode = FocusNode();
  final confirmPasswordFocusNode = FocusNode();
  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    mobileNoController.dispose();
    addressController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: AppStrings.name,
            controller: nameController,
            validate: (value) {
              if (value!.isEmpty) {
                return '* name is required';
              } else if (value.length < 3) {
                return '* name must be at least 3 digits';
              }
              return null;
            },
            textOnChanged: (val) => debugPrint(val),
            keyboardType: TextInputType.name,
            focusNode: nameFocusNode,
            onEditingComplete: () =>
                FocusScope.of(context).requestFocus(emailFocusNode),
          ),
          SizedBox(
            height: PaddingSize.padding17h,
          ),
          CustomTextFormField(
            hintText: AppStrings.email,
            controller: emailController,
            validate: (value) {
              if (value!.isEmpty) {
                return '* Email is required';
              } else if (!value.endsWith("@gmail.com")) {
                return '* Email must be end with @gmail.com';
              } else if (value.length < 13) {
                return '* Email must be at least 13 digits';
              }
              return null;
            },
            textOnChanged: (val) => debugPrint(val),
            keyboardType: TextInputType.emailAddress,
            focusNode: emailFocusNode,
            onEditingComplete: () =>
                FocusScope.of(context).requestFocus(mobileNoFocusNode),
          ),
          SizedBox(
            height: PaddingSize.padding17h,
          ),
          CustomTextFormField(
            hintText: AppStrings.mobileNo,
            controller: mobileNoController,
            validate: (value) {
              if (value!.isEmpty) {
                return '* phone is required';
              } else if (value.length != 11) {
                return '* phone must be at least 11 digits';
              } else if (!value.startsWith("01")) {
                return '* phone must be start with 01';
              }
              return null;
            },
            textOnChanged: (val) => debugPrint(val),
            keyboardType: TextInputType.phone,
            focusNode: mobileNoFocusNode,
            onEditingComplete: () =>
                FocusScope.of(context).requestFocus(addressFocusNode),
          ),
          SizedBox(
            height: PaddingSize.padding17h,
          ),
          CustomTextFormField(
            hintText: AppStrings.address,
            controller: addressController,
            validate: (value) {
              if (value!.isEmpty) {
                return '* Address is required';
              }
              return null;
            },
            textOnChanged: (val) => debugPrint(val),
            keyboardType: TextInputType.streetAddress,
            focusNode: addressFocusNode,
            onEditingComplete: () =>
                FocusScope.of(context).requestFocus(passwordFocusNode),
          ),
          SizedBox(
            height: PaddingSize.padding17h,
          ),
          CustomTextFormField(
            hintText: AppStrings.password,
            controller: passwordController,
            validate: (value) {
              if (value!.isEmpty) {
                return '* Password is required';
              } else if (value.length < 7) {
                return '* Password must be at least 7 char';
              }
              return null;
            },
            textOnChanged: (val) => debugPrint(val),
            keyboardType: TextInputType.visiblePassword,
            focusNode: passwordFocusNode,
            isObsecured: true,
            onEditingComplete: () =>
                FocusScope.of(context).requestFocus(confirmPasswordFocusNode),
          ),
          SizedBox(
            height: PaddingSize.padding17h,
          ),
          CustomTextFormField(
            hintText: AppStrings.confirmPassword,
            controller: confirmPasswordController,
            validate: (value) {
              if (value! != passwordController.text) {
                return '* Confirm password is Wrong';
              } else if (value.length < 7) {
                return '* Confirm password must be at least 7 char';
              }
              return null;
            },
            textOnChanged: (val) => debugPrint(val),
            keyboardType: TextInputType.visiblePassword,
            focusNode: confirmPasswordFocusNode,
            textAction: TextInputAction.next,
            isObsecured: true,
          ),
          SizedBox(
            height: PaddingSize.padding17h,
          ),
          CustomRoundedButton(
            buttonText: AppStrings.save,
            onPressed: () {
              if (formKey.currentState!.validate()) {
                // BlocProvider.of<AuthBloc>(context).add(
                //   SignUpRequest(
                //     emailController.text,
                //     passwordController.text,
                //   ),
                // );
              }
            },
            heroTag: AppStrings.saveEditedDataTag,
          ),
          SizedBox(
            height: PaddingSize.padding34h,
          ),
        ],
      ),
    );
  }
}
