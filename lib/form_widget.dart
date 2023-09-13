import 'package:flutter/material.dart';
import 'package:flutter_application_1/form_global_widget.dart';

class UserClient {
  final String nameClient;
  final String age;

  UserClient({
    required this.nameClient,
    required this.age,
  });
}

class Provinsi {
  final String? name;
  final String? id;

  Provinsi({
    this.name,
    this.id,
  });
}

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final formKey = GlobalKey<FormState>();

  // final _namaController = TextEditingController();
  // final _passwordController = TextEditingController();

  bool showPassword = true;

  // property disable button
  // kasih informasi error
  // 1. username tidak boleh kosong
  // 2. username harus lebih dari 2 huruf
  bool isDisableButtonUsername = false;
  String? messageErrorUsername;
  String usernameValue = "";

  // prorty password
  // kondisi
  // 1. password tidak boleh kosong
  // 2. password harus lebih dari 4 huruf
  bool isDisabledButtonPassword = false;
  String? messagePassword;
  String passwordValue = "";

  void changeShowPassword() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  // function username onchanged
  void usernameOnchanged(String value) {
    usernameValue = value;
    if (usernameValue.isEmpty) {
      isDisableButtonUsername = false;
      messageErrorUsername = "Username Tidak Boleh Kosong";
    } else if (usernameValue.length <= 2) {
      isDisableButtonUsername = false;
      messageErrorUsername = "Username harus lebih dari 2";
    } else {
      isDisableButtonUsername = true;
      messageErrorUsername = null;
    }
    setState(() {});
  }

  // Radio Button
  // 1. Admin

  var radioValue = "";
  bool isRadioSelected = false;

  List<UserClient> listRadioClient = [
    UserClient(age: "10", nameClient: "Admin"),
    UserClient(age: "2", nameClient: "User"),
  ];

  UserClient? _selectedRadio;

  //
  bool isCheckValue = false;

  // Property
  var dropDownValue = 0;

  List<String> listDropDown = ["Satu", "Dua"];
  String selectValueDropDown = "Satu";

  Provinsi? selectProvinsi;

  List<Provinsi> listProvinsi = [
    Provinsi(id: "0", name: "Jawa Barat"),
    Provinsi(id: "1", name: "Jawa Timur"),
    Provinsi(id: "2", name: "Jawa Tengah"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          FormGlobalWidget(
            title: 'Username',
            hintText: "Silahkan Masukkan Username",
            onChanged: (value) {
              usernameOnchanged(value);
            },
            errorText: messageErrorUsername,
          ),
          const SizedBox(height: 24),
          FormGlobalWidget(
            title: 'Password',
            hintText: 'Silahkan Masukan Password',
            obscureText: showPassword,
            onChanged: (value) {
              passwordValue = value;
              if (passwordValue.isEmpty) {
                isDisabledButtonPassword = false;
                messagePassword = "Password Tidak Boleh Kosong";
              } else if (passwordValue.length < 4) {
                isDisabledButtonPassword = false;
                messagePassword = "Password Harus lebih dari 4 huruf";
              } else {
                isDisabledButtonPassword = true;
                messagePassword = null;
              }
              setState(() {});
            },
            errorText: messagePassword,
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
          Row(
            children: List.generate(
              listRadioClient.length,
              (index) => Expanded(
                child: RadioListTile(
                  value: listRadioClient[index],
                  groupValue: _selectedRadio,
                  contentPadding: const EdgeInsets.all(0),
                  dense: true,
                  title: Text(listRadioClient[index].nameClient),
                  onChanged: (val) {
                    _selectedRadio = val;
                    isRadioSelected = true;
                    setState(() {});
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Checkbox(
                value: isCheckValue,
                onChanged: (value) {
                  setState(() {
                    isCheckValue = value ?? false;
                  });
                },
              ),
              const Text("S&K")
            ],
          ),
          CheckboxListTile(
            value: isCheckValue,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (val) {
              setState(() {
                isCheckValue = val ?? false;
              });
            },
            title: const Text('S&K'),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isCheckValue = !isCheckValue;
              });
            },
            child: isCheckValue
                ? const Icon(
                    Icons.check_box,
                  )
                : const Icon(
                    Icons.check_box_outline_blank,
                  ),
          ),
          const SizedBox(height: 24),
          Switch(
            value: isCheckValue,
            onChanged: (val) {
              setState(() {
                isCheckValue = !isCheckValue;
              });
            },
          ),
          const SizedBox(height: 24),
          DropdownButton<String>(
            value: selectValueDropDown,
            onChanged: (String? val) {
              setState(() {
                selectValueDropDown = val ?? "";
              });
            },
            items: listDropDown
                .map(
                  (String value) => DropdownMenuItem(
                    value: value,
                    child: Text(
                      value,
                    ),
                  ),
                )
                .toList(),
          ),
          DropdownButton(
            value: selectProvinsi,
            hint: const Text('Pilih Provinsi..'),
            items: List.generate(
              listProvinsi.length,
              (index) => DropdownMenuItem(
                value: listProvinsi[index],
                child: Text(
                  listProvinsi[index].name ?? "",
                ),
              ),
            ),
            onChanged: (val) {
              setState(() {
                selectProvinsi = val;
              });
            },
          ),
          // Center(
          //   child: ElevatedButton(
          //     onPressed: () {
          //       print('Tekan');
          //     },
          //     child: const Text(
          //       'Login',
          //     ),
          //   ),
          // ),
          // IconButton(
          //   onPressed: () {
          //     print("Tekan");
          //   },
          //   icon: Icon(Icons.abc),
          // )

          GestureDetector(
            onTap: () {
              print("tekan");
            },
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 120,
              ),
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.red,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.abc),
                  SizedBox(width: 4),
                  Text(
                    "Login",
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
