import 'package:flutter/material.dart';
import 'package:flutter_application_1/form_global_widget.dart';

class FormFieldText extends StatefulWidget {
  const FormFieldText({super.key});

  @override
  State<FormFieldText> createState() => _FormFieldTextState();
}

class _FormFieldTextState extends State<FormFieldText> {
  final formKey = GlobalKey<FormState>();

  final _namaController = TextEditingController();
  final _passwordController = TextEditingController();

  bool showPassword = true;

  void changeShowPassword() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      body: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            FormGlobalWidget(
              title: 'Username',
              hintText: "Silahkan Masukkan Username",
              controller: _namaController,
              validator: (value) {
                if (value?.isEmpty == true) {
                  return 'Username Tidak Boleh Kosong';
                }
                return null;
              },
            ),
            const SizedBox(height: 24),
            FormGlobalWidget(
              title: 'Password',
              hintText: 'Silahkan Masukan Password',
              controller: _passwordController,
              obscureText: showPassword,
              validator: (value) {
                if (value?.isEmpty == true) {
                  return 'Password Tidak Boleh Kosong';
                } else if ((value?.length ?? 0) <= 6) {
                  return 'Password harus lebih dari 6';
                }
                return null;
              },
              suffixIcon: IconButton(
                onPressed: changeShowPassword,
                icon: showPassword == true
                    ? const Icon(
                        Icons.visibility_off,
                      )
                    : const Icon(
                        Icons.visibility,
                      ),
              ),
            ),
            const SizedBox(height: 24),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (formKey.currentState?.validate() == true) {
                    print('Berhasil Login');
                  }
                },
                child: const Text(
                  'Login',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
