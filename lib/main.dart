//Enfim OBSERVABLES obs e obx
//Outra forma de implementrar GetX no flutter
//metodo sem usar a classe controller

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class Controller extends GetxController {
  static Controller get to => Get.find();

  String titulo = 'Aplicativo Get X';
  int valor = 0;

  void incrementaValor() {
    valor++;
    print(valor);
    update();
  }
}

class MyApp extends StatelessWidget {
  //final controller = Get.put(Controller()); ////metodo sem usar a classe controller

  var numero = 0.obs;
  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Texto'),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () => numero++,
            child: Obx(
              () => Text(
                'Valor: ${numero}',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
        ),
      ),
    );
  }
}








/*
//nao esquecer de separar os arquivos no notpad pra salvar depois
import 'package:get/get.dart';
import 'package:flutter/material.dart';

//código de rotas
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => Tela1()),
        GetPage(name: '/Tela2', page: () => Tela2()),
        GetPage(name: '/Tela3', page: () => Tela3()),
      ],
      home: Tela1(),
    );
  }
}

class Tela1 extends StatelessWidget {
  const Tela1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Tela 1'),
          ),
          body: Center(
            child: ElevatedButton(
              child: Text('Ir para a tela 2'),
              onPressed: (() {
                print('Clicou no botão da tela 1');
                //[0,1,2] varios argumentos com Get.arguments
                Get.toNamed('/Tela2', arguments: ['arg1', 'arg2']);
                //Get.to(Tela2(), arguments: 'Dados da tela 1');
                //['arg1', 'arg2']\\
/*
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Tela2();
                }));
                */
              }),
            ),
          ),
        ),
      ),
    );
  }
}

class Tela2 extends StatelessWidget {
  const Tela2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Tela 2 - ' +
                Get.arguments[0]), //[0,1,2] varios argumentos com Get.arguments
            backgroundColor: Colors.red,
          ),
          body: Center(
            child: ElevatedButton(
              child: Text('Ir para a tela 3'),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
              onPressed: (() {
                print('Clicou no botão da tela 2');

                Get.to(Tela3(), arguments: 'Dados da tela 2');

                //Get.back();

                //Navigator.pop(context);
              }),
            ),
          ),
        ),
      ),
    );
  }
}

class Tela3 extends StatelessWidget {
  const Tela3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Tela 3 - ' +
                Get.arguments), //[0,1,2] varios argumentos com Get.arguments
            backgroundColor: Colors.green,
          ),
          body: Center(
            child: ElevatedButton(
              child: Text('Ir para a tela 1'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
              onPressed: (() {
                print('Clicou no botão da tela 3');

                Get.to(Tela1(), arguments: 'Dados da tela 3');
                //Get.back();

                //Navigator.pop(context);
              }),
            ),
          ),
        ),
      ),
    );
  }
}
*/




/*
//passagem de parametros com rotas
import 'package:get/get.dart';
import 'package:flutter/material.dart';

//código de rotas
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tela1(),
    );
  }
}

class Tela1 extends StatelessWidget {
  const Tela1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Tela 1'),
          ),
          body: Center(
            child: ElevatedButton(
              child: Text('Ir para a tela 2'),
              onPressed: (() {
                print('Clicou no botão da tela 1');
                //[0,1,2] varios argumentos com Get.arguments
                Get.to(Tela2(), arguments: 'Dados da tela 1');
                //['arg1', 'arg2']\\
/*
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Tela2();
                }));
                */
              }),
            ),
          ),
        ),
      ),
    );
  }
}

class Tela2 extends StatelessWidget {
  const Tela2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Tela 2 - ' +
                Get.arguments), //[0,1,2] varios argumentos com Get.arguments
            backgroundColor: Colors.red,
          ),
          body: Center(
            child: ElevatedButton(
              child: Text('Retornar para a tela 1'),
              onPressed: (() {
                print('Clicou no botão da tela 2');

                Get.back();

                //Navigator.pop(context);
              }),
            ),
          ),
        ),
      ),
    );
  }
}
*/



/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class Controller extends GetxController {
  static Controller get to => Get.find();

  String titulo = 'GETX Treinos';
  int valor = 0;

  void incrementaValor() {
    valor++;
    print(valor);
    update();
  }
}

class MyApp extends StatelessWidget {
  final controller = Get.put(Controller());

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetBuilder<Controller>(
          init: Controller(),
          builder: (_) {
            return Scaffold(
              appBar: AppBar(
                title: Center(
                    child: Text(
                  '${controller.titulo}',
                  style: TextStyle(fontSize: 30),
                )),
              ),
              body: Center(
                //Get.find
                child: GestureDetector(
                  //() => _.incrementaValor(),
                  onTap: () => controller.incrementaValor(),
                  child: Text(
                    //'Valor: ${_.valor}',
                    'Valor: ${controller.valor}',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
*/