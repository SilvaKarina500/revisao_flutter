// ============================================================
// IMPORTAÇÃO
// ============================================================
//
// import é utilizado para trazer recursos de outras
// bibliotecas para dentro do nosso arquivo.
//
// Neste caso estamos importando a biblioteca Material
// do Flutter.
//
// Ela disponibiliza diversos Widgets que utilizaremos,
// como:
//
// MaterialApp
// Scaffold
// AppBar
// Center
// Column
// Text
// FloatingActionButton
// Icon
// SizedBox
//
// Sem esta importação, esses Widgets não estariam
// disponíveis neste arquivo.
import 'package:flutter/material.dart';


// ============================================================
// FUNÇÃO MAIN
// ============================================================
//
// main() é o PONTO DE ENTRADA da aplicação.
//
// Quando executamos o projeto, o Dart começa
// a execução do programa por esta função.
//
// void:
// indica que esta função não retorna nenhum valor.
//
// main:
// é o nome da função.
//
// ():
// indica que ela não está recebendo parâmetros.
void main() {

  // runApp() é uma função do Flutter responsável
  // por iniciar a aplicação.
  //
  // Dentro dos parênteses informamos qual Widget
  // será colocado na raiz da aplicação.
  //
  // Neste projeto estamos iniciando MyApp.
  //
  // const:
  // estamos informando que MyApp pode ser construído
  // como uma constante, pois neste momento seus
  // argumentos são constantes.
  runApp(const MyApp());
}


// ============================================================
// WIDGET PRINCIPAL DA APLICAÇÃO
// ============================================================
//
// class:
// palavra utilizada para declarar uma classe.
//
// MyApp:
// nome que demos para nossa classe.
//
// extends:
// significa que nossa classe está HERDANDO
// características de outra classe.
//
// StatelessWidget:
// é uma classe fornecida pelo Flutter.
//
// Portanto:
//
// class MyApp extends StatelessWidget
//
// significa:
//
// "Estamos criando uma classe chamada MyApp
// que será um StatelessWidget."
//
// StatelessWidget é utilizado quando o próprio Widget
// não precisa manter um estado mutável.
//
// Neste projeto, MyApp será responsável principalmente
// pelas configurações gerais da aplicação.
class MyApp extends StatelessWidget {


  // ----------------------------------------------------------
// CONSTRUTOR
// ----------------------------------------------------------
//
// Este é o construtor da classe MyApp.
//
// O construtor é utilizado quando criamos
// uma instância dessa classe.
//
// const:
// indica que esse construtor pode criar
// objetos constantes quando os argumentos
// fornecidos também forem constantes.
//
// super.key:
//
// "key" é uma propriedade utilizada pelo Flutter
// para ajudar a identificar Widgets na árvore.
//
// super significa que estamos enviando essa informação
// para o construtor da classe pai, neste caso,
// StatelessWidget.
  const MyApp({super.key});


  // ----------------------------------------------------------
// @override
// ----------------------------------------------------------
//
// @override informa que o método abaixo já existe
// na classe que estamos herdando.
//
// Neste caso, StatelessWidget possui o método build().
//
// Nós estamos dizendo:
//
// "Quero fornecer minha própria implementação
// deste método."
  @override


  // ----------------------------------------------------------
// MÉTODO BUILD
// ----------------------------------------------------------
//
// Widget:
// é o tipo de valor que este método retorna.
//
// build:
// é o nome do método.
//
// BuildContext context:
//
// BuildContext contém informações sobre a posição
// deste Widget dentro da árvore de Widgets.
//
// O Flutter chama build() quando precisa saber
// como este Widget deve ser representado.
  Widget build(BuildContext context) {


    // return significa:
    //
    // "devolva este resultado".
    //
    // Como build() precisa retornar um Widget,
    // estamos retornando MaterialApp.
    return MaterialApp(


      // --------------------------------------------------------
      // TITLE
      // --------------------------------------------------------
      //
      // title é uma propriedade do MaterialApp.
      //
      // Define um título para a aplicação.
      //
      // Este valor não representa necessariamente
      // um texto visível dentro da tela.
      title: 'Flutter Demo',


      // --------------------------------------------------------
      // THEME
      // --------------------------------------------------------
      //
      // theme define o tema visual da aplicação.
      //
      // ThemeData é uma classe utilizada para
      // configurar esse tema.
      theme: ThemeData(


        // ColorScheme define o conjunto
        // de cores utilizado pela aplicação.
        //
        // fromSeed cria automaticamente um
        // esquema de cores a partir de uma cor base.
        colorScheme: ColorScheme.fromSeed(


          // seedColor é a cor utilizada como base
          // para gerar o esquema.
          //
          // Colors.deepPurple é uma cor
          // disponibilizada pelo Material Design.
          seedColor: Colors.deepPurple,
        ),
      ),


      // --------------------------------------------------------
      // HOME
      // --------------------------------------------------------
      //
      // home define qual Widget será utilizado
      // como primeira tela da aplicação.
      //
      // Estamos criando MyHomePage.
      //
      // const pode ser utilizado porque estamos
      // passando um valor constante para title.
      home: const MyHomePage(


        // Estamos enviando esta String
        // para o parâmetro title do MyHomePage.
        title: 'Flutter Demo Home Page',
      ),
    );
  }
}


// ============================================================
// TELA PRINCIPAL
// ============================================================
//
// Agora começamos a construção da tela principal.
//
// MyHomePage será um StatefulWidget.
//
// Stateful:
// "com estado".
//
// Utilizamos StatefulWidget quando alguma informação
// associada à interface pode mudar durante a execução.
//
// Nosso contador é um exemplo:
//
// 0 -> 1 -> 2 -> 3...
//
// Como o valor muda e a interface precisa refletir
// essas mudanças, precisamos trabalhar com estado.
class MyHomePage extends StatefulWidget {


  // ----------------------------------------------------------
// CONSTRUTOR DO MyHomePage
// ----------------------------------------------------------
//
// required:
// significa que title é obrigatório.
//
// this.title:
//
// o valor recebido será armazenado
// na propriedade title desta classe.
  const MyHomePage({
    super.key,
    required this.title,
  });


  // ----------------------------------------------------------
// PROPRIEDADE TITLE
// ----------------------------------------------------------
//
// String:
// define o tipo da informação.
//
// title:
// nome da propriedade.
//
// final:
// significa que, depois que essa propriedade
// receber um valor durante a construção desta
// instância, sua referência não será reatribuída.
//
// Isso combina com a ideia de que a configuração
// do StatefulWidget é imutável.
  final String title;


  // ----------------------------------------------------------
// CREATE STATE
// ----------------------------------------------------------
//
// Um StatefulWidget trabalha junto
// com um objeto State.
//
// O StatefulWidget representa a configuração.
//
// O State guarda as informações mutáveis
// utilizadas pela interface.
//
// State<MyHomePage>:
//
// significa:
//
// "Este State pertence ao MyHomePage."
//
// => é uma sintaxe reduzida para retornar
// uma expressão.
//
// Estamos criando _MyHomePageState().
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


// ============================================================
// ESTADO DA TELA
// ============================================================
//
// Aqui está a classe que controla o estado
// da nossa MyHomePage.
//
// extends State<MyHomePage>
//
// significa que esta classe será o State
// associado ao MyHomePage.
//
// O "_" no início de:
//
// _MyHomePageState
//
// indica que esse identificador é privado
// para a biblioteca Dart onde foi declarado.
class _MyHomePageState extends State<MyHomePage> {


  // ----------------------------------------------------------
// VARIÁVEL DO CONTADOR
// ----------------------------------------------------------
//
// int:
// tipo utilizado para números inteiros.
//
// _counter:
// nome da variável.
//
// =:
// operador de ATRIBUIÇÃO.
//
// 0:
// valor inicial.
//
// Portanto:
//
// int _counter = 0;
//
// significa:
//
// "Crie uma variável inteira chamada _counter
// e atribua inicialmente o valor zero."
  int _counter = 0;


// ============================================================
// FUNÇÃO INCREMENTAR
// ============================================================
//
// Esta função será utilizada para aumentar
// o contador.
//
// void:
// a função não retorna um valor.
//
// _incrementCounter:
// nome da função.
//
// ():
// não recebe parâmetros.
  void _incrementCounter() {


    // setState() é fornecido pela classe State.
    //
    // Utilizamos quando alteramos um estado
    // que afeta o que será exibido.
    //
    // Ao executar setState(), informamos ao Flutter
    // que o estado mudou e que essa parte da interface
    // precisa ser reconstruída.
    setState(() {


      // ++ é o operador de incremento.
      //
      // Ele acrescenta 1 ao valor atual.
      //
      // _counter++;
      //
      // equivale a:
      //
      // _counter = _counter + 1;
      _counter++;
    });
  }


// ============================================================
// FUNÇÃO DECREMENTAR
// ============================================================
//
// Agora criamos uma segunda função.
//
// Ela será responsável por diminuir
// o valor do contador.
  void _decrementCounter() {


    // if cria uma estrutura condicional.
    //
    // Podemos ler:
    //
    // "SE esta condição for verdadeira,
    // execute o código dentro das chaves."
    //
    // > significa "maior que".
    //
    // Portanto:
    //
    // _counter > 0
    //
    // pergunta:
    //
    // "O contador é maior que zero?"
    if (_counter > 0) {


      // Como o valor utilizado pela interface
      // será alterado, usamos setState().
      setState(() {


        // -- é o operador de decremento.
        //
        // Ele diminui 1 do valor atual.
        //
        // _counter--;
        //
        // equivale a:
        //
        // _counter = _counter - 1;
        _counter--;
      });
    }
  }


// ============================================================
// FUNÇÃO ZERAR
// ============================================================
//
// Esta função será responsável por
// voltar o contador para zero.
  void _resetCounter() {


    // Novamente o estado será alterado.
    setState(() {


      // Aqui não estamos somando
      // nem diminuindo.
      //
      // Estamos ATRIBUINDO um novo valor.
      //
      // = significa atribuição.
      _counter = 0;
    });
  }


// ============================================================
// CONSTRUÇÃO DA INTERFACE DA TELA
// ============================================================

  @override
  Widget build(BuildContext context) {


    // Scaffold cria a estrutura básica
    // de uma tela Material.
    //
    // Ele possui propriedades como:
    //
    // appBar
    // body
    // floatingActionButton
    // drawer
    // bottomNavigationBar
    //
    // Para este projeto utilizaremos:
    //
    // appBar
    // body
    // floatingActionButton
    return Scaffold(


// ============================================================
// APPBAR
// ============================================================
//
// appBar recebe um Widget AppBar.
//
// AppBar representa a barra superior da tela.
      appBar: AppBar(


        // Define a cor de fundo da AppBar.
        //
        // Theme.of(context)
        //
        // acessa o tema disponível para esta
        // região da árvore de Widgets.
        //
        // colorScheme
        //
        // acessa o esquema de cores.
        //
        // inversePrimary
        //
        // seleciona uma das cores
        // disponíveis nesse esquema.
        backgroundColor:
            Theme.of(context).colorScheme.inversePrimary,


        // title espera um Widget.
        //
        // Estamos utilizando Text.
        //
        // widget:
        //
        // dentro da classe State, a propriedade
        // widget permite acessar a instância
        // atual do StatefulWidget associado.
        //
        // Portanto:
        //
        // widget.title
        //
        // acessa o title que pertence ao MyHomePage.
        title: Text(widget.title),
      ),


// ============================================================
// BODY
// ============================================================
//
// body representa o conteúdo principal da tela.
      body: Center(


        // Center recebe apenas um Widget filho.
        //
        // Por isso utilizamos:
        //
        // child
        //
        // e não children.
        //
        // Center posiciona esse filho
        // no centro do espaço disponível.
        child: Column(


          // Column organiza seus filhos
          // verticalmente.
          //
          // Imagine:
          //
          // Widget
          //   ↓
          // Widget
          //   ↓
          // Widget


          // mainAxisAlignment controla
          // o alinhamento no eixo PRINCIPAL.
          //
          // No Column, o eixo principal
          // é o eixo VERTICAL.
          //
          // MainAxisAlignment.center
          //
          // centraliza os elementos verticalmente.
          mainAxisAlignment: MainAxisAlignment.center,


          // Column pode receber vários filhos.
          //
          // Por isso usamos children.
          //
          // [] representa uma lista.
          children: [


// ============================================================
// MENSAGEM DINÂMICA
// ============================================================
//
// Text cria um Widget de texto.
//
// Perceba que NÃO estamos utilizando const.
//
// Isso acontece porque o conteúdo deste Text
// depende da variável _counter.
//
// Como _counter pode mudar durante a execução,
// o valor utilizado para construir este Text
// também pode mudar.
            Text(


              // Aqui utilizamos um
              // OPERADOR CONDICIONAL (TERNÁRIO).
              //
              // Sua estrutura é:
              //
              // condição
              //   ? resultado se verdadeiro
              //   : resultado se falso


              // == é um operador de COMPARAÇÃO.
              //
              // Não confunda:
              //
              // =  -> atribuição
              //
              // == -> comparação
              //
              // Aqui estamos perguntando:
              //
              // "O valor de _counter é igual a zero?"
              _counter == 0


                  // Se a condição for verdadeira,
                  // será utilizado este texto.
                  ? 'Vamos começar!'


                  // Se a condição for falsa,
                  // será utilizado este texto.
                  //
                  // $_counter realiza
                  // INTERPOLAÇÃO DE STRING.
                  //
                  // O valor da variável será
                  // inserido dentro do texto.
                  : 'Você clicou $_counter vezes!',
            ),


// ============================================================
// ESPAÇAMENTO
// ============================================================
//
// SizedBox pode ser utilizado para criar
// um espaço com tamanho definido.
//
// Aqui estamos criando 20 pixels lógicos
// de espaço vertical.
//
// Podemos usar const porque:
//
// height: 20
//
// é um valor conhecido e não muda.
            const SizedBox(height: 20),


// ============================================================
// VALOR DO CONTADOR
// ============================================================

            Text(


              // Exibe apenas o valor
              // atual do contador.
              //
              // Novamente não podemos colocar const,
              // pois _counter muda.
              '$_counter',


              // style configura a aparência do texto.
              //
              // Estamos acessando o tema atual
              // e utilizando headlineMedium.
              style:
                  Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),


// ============================================================
// ÁREA DOS BOTÕES
// ============================================================
//
// floatingActionButton normalmente recebe
// um Widget.
//
// Como queremos colocar TRÊS botões,
// colocamos uma Row nessa propriedade.
//
// Row permite organizar vários Widgets
// horizontalmente.
      floatingActionButton: Row(


        // No Row, o eixo principal
        // é HORIZONTAL.
        //
        // MainAxisAlignment.end
        //
        // posiciona os elementos no final
        // desse eixo.
        //
        // Neste caso, eles ficam do lado direito.
        mainAxisAlignment: MainAxisAlignment.end,


        // Row recebe vários filhos,
        // então utilizamos children.
        children: [


// ============================================================
// BOTÃO DECREMENTAR
// ============================================================

          FloatingActionButton(


            // onPressed define qual função
            // será executada quando
            // o usuário pressionar o botão.
            //
            // Não usamos:
            //
            // _decrementCounter()
            //
            // aqui.
            //
            // Estamos passando a REFERÊNCIA
            // da função para o onPressed.
            onPressed: _decrementCounter,


            // tooltip é um texto auxiliar
            // associado ao botão.
            tooltip: 'Decrementar',


            // child recebe o conteúdo visual
            // do botão.
            //
            // Icon cria um ícone.
            //
            // Icons.remove representa
            // o símbolo de menos.
            //
            // Podemos utilizar const porque
            // esse ícone não depende de
            // nenhuma informação que muda.
            child: const Icon(Icons.remove),
          ),


// ============================================================
// ESPAÇO ENTRE OS BOTÕES
// ============================================================

          // Aqui o SizedBox possui largura 10.
          //
          // Como estamos dentro de uma Row,
          // isso cria um espaço HORIZONTAL.
          //
          // Também pode ser const.
          const SizedBox(width: 10),


// ============================================================
// BOTÃO ZERAR
// ============================================================

          FloatingActionButton(


            // Ao clicar, chamaremos
            // a função responsável por
            // colocar _counter em zero.
            onPressed: _resetCounter,

            tooltip: 'Zerar',


            // Icons.refresh representa
            // um ícone de atualização/reinício.
            child: const Icon(Icons.refresh),
          ),


          // Espaçamento entre o segundo
          // e o terceiro botão.
          const SizedBox(width: 10),


// ============================================================
// BOTÃO INCREMENTAR
// ============================================================

          FloatingActionButton(


            // Executa _incrementCounter
            // quando o botão for pressionado.
            onPressed: _incrementCounter,

            tooltip: 'Incrementar',


            // Icons.add representa
            // o símbolo de mais.
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
