# 📱 Meu Primeiro App com Flutter

Este projeto foi criado durante as aulas da **UC13** como primeiro contato prático com o desenvolvimento de aplicações utilizando **Flutter**.

O objetivo deste projeto não é apenas executar um aplicativo, mas compreender como um projeto Flutter é estruturado, como sua interface é construída e como podemos trabalhar com **Widgets, estados e interações do usuário**.

---

## 🎯 Objetivos de aprendizagem

Durante o desenvolvimento deste projeto, vamos aprender a:

- Conhecer a estrutura básica de um projeto Flutter;
- Entender a função da pasta `lib`;
- Identificar o arquivo `main.dart`;
- Compreender o funcionamento da função `main()`;
- Utilizar `runApp()` para iniciar uma aplicação;
- Entender o conceito de **Widget**;
- Diferenciar `StatelessWidget` e `StatefulWidget`;
- Construir uma interface utilizando Widgets;
- Trabalhar com estado;
- Atualizar informações da interface utilizando `setState()`;
- Criar interações através de botões;
- Compreender a organização da árvore de Widgets.

---

# 🗂️ Estrutura do projeto

Ao criar um projeto com:

```bash
flutter create meu_app
```

o Flutter gera automaticamente diversas pastas e arquivos.

Uma estrutura simplificada do projeto é:

```text
meu_app/
│
├── android/              → Configurações e arquivos específicos para Android
│                           (Gradle, permissões, versão do app, configurações nativas)
│
├── ios/                  → Configurações e arquivos específicos para iOS
│                           (Xcode, permissões e configurações para dispositivos Apple)
│
├── lib/                  → 📌 Principal pasta do nosso código Flutter
│   │
│   └── main.dart         → Ponto de entrada da aplicação
│                           É onde o aplicativo começa a ser executado
│
├── linux/                → Arquivos necessários para executar o app no Linux
│
├── macos/                → Arquivos necessários para executar o app no macOS
│
├── test/                 → Arquivos utilizados para testes automatizados
│                           da aplicação
│
├── web/                  → Arquivos e configurações para executar o projeto
│                           como uma aplicação Web
│
├── windows/              → Arquivos necessários para executar o app no Windows
│
├── pubspec.yaml          → 📦 Arquivo de configuração do projeto
│                           Define dependências, imagens, fontes, versão etc.
│
├── pubspec.lock          → Registra as versões exatas das dependências
│                           utilizadas pelo projeto
│
├── analysis_options.yaml → Define regras de análise e boas práticas
│                           para o código Dart
│
└── README.md             → 📖 Documentação do projeto
                            Explica o projeto, execução e conceitos estudados
```

Durante nossos primeiros projetos, trabalharemos principalmente dentro da pasta:

```text
lib/
```

É nela que ficará grande parte do código Dart utilizado para construir nossa aplicação Flutter.

---

# 🚀 Onde o aplicativo começa?

O ponto de entrada da aplicação está no arquivo:

```text
lib/main.dart
```

Dentro dele encontramos a função:

```dart
void main() {
  runApp(const MyApp());
}
```

A função `main()` é o **ponto inicial da aplicação**.

Quando executamos nosso projeto, o Flutter começa a leitura do programa por ela.

Já o `runApp()` informa qual será o primeiro Widget carregado.

Neste projeto:

```dart
runApp(const MyApp());
```

significa que o Widget `MyApp` será utilizado para iniciar nossa aplicação.

---

# 🧩 O que são Widgets?

No Flutter, praticamente tudo que aparece na interface é um **Widget**.

Por exemplo:

```text
Text
Button
Icon
Image
AppBar
Column
Row
Scaffold
```

Podemos pensar nos Widgets como **blocos utilizados para construir a interface do aplicativo**.

Esses blocos podem ficar dentro de outros blocos, formando uma estrutura chamada:

## 🌳 Árvore de Widgets

No Flutter, a interface é construída através da combinação de **Widgets**.

Um Widget pode estar dentro de outro Widget, formando uma estrutura hierárquica conhecida como **Árvore de Widgets (Widget Tree)**.

No nosso primeiro aplicativo, temos de forma simplificada a seguinte estrutura:

```text
MyApp                                  → Widget principal da aplicação
│
└── MaterialApp                        → Configura as características gerais do app
     │                                   como tema, cores, título e tela inicial
     │
     └── MyHomePage                    → Representa a tela principal do aplicativo
          │                              e possui um estado que pode mudar
          │
          └── Scaffold                 → Cria a estrutura visual básica da tela
               │
               ├── AppBar              → Barra localizada no topo da tela
               │    │
               │    └── Text           → Exibe o título da página
               │
               ├── Center              → Centraliza seu conteúdo na tela
               │    │
               │    └── Column         → Organiza vários Widgets verticalmente
               │         │
               │         ├── Text      → Exibe a mensagem explicativa
               │         │
               │         └── Text      → Exibe o valor atual do contador
               │                        (_counter)
               │
               └── FloatingActionButton → Botão flutuante utilizado para
                    │                     realizar uma ação
                    │
                    └── Icon           → Exibe o ícone de "+" dentro do botão
```

### 🔎 Como ler essa árvore?

A árvore de Widgets mostra **como os elementos da interface estão organizados e relacionados entre si**.

Quando um Widget aparece abaixo de outro, significa que ele está sendo utilizado dentro daquele Widget.

Observe este pequeno trecho da nossa árvore:

```text
Center
   │
   └── Column
        │
        ├── Text
        └── Text
```

Nesse exemplo:

- `Center` centraliza o conteúdo disponível;
- dentro do `Center` existe uma `Column`;
- a `Column` organiza seus elementos verticalmente;
- dentro da `Column` existem dois Widgets `Text`.

Essa mesma estrutura pode ser encontrada no nosso código:

```dart
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        'You have pushed the button this many times:',
      ),
      Text(
        '$_counter',
      ),
    ],
  ),
),
```

Perceba que a organização do código acompanha a própria estrutura da árvore.

---

### 👨‍👩‍👧 Widget pai e Widget filho

Quando colocamos um Widget dentro de outro, podemos utilizar os conceitos de **Widget pai** e **Widget filho**.

Por exemplo:

```text
Center              ← Widget pai
   │
   └── Column        ← Filho do Center
        │
        ├── Text     ← Filho da Column
        └── Text     ← Filho da Column
```

Nesse exemplo, a `Column` é **filha do `Center`**, mas ao mesmo tempo é **pai dos Widgets `Text`**.

Isso acontece porque os Widgets podem ser encaixados uns dentro dos outros.

---

### 🧩 `child` e `children`

Ao observar códigos Flutter, encontraremos frequentemente as propriedades `child` e `children`.

#### `child`

Utilizamos `child` quando determinado Widget recebe **um único Widget filho**.

Exemplo:

```dart
Center(
  child: Text('Olá, Flutter!'),
)
```

Nesse caso:

```text
Center
   │
   └── Text
```

O `Center` possui apenas um Widget filho: o `Text`.

---

#### `children`

Utilizamos `children` em Widgets que recebem **uma lista de Widgets filhos**.

Exemplo:

```dart
Column(
  children: [
    Text('Primeiro texto'),
    Text('Segundo texto'),
    Text('Terceiro texto'),
  ],
)
```

A estrutura fica:

```text
Column
   │
   ├── Text
   ├── Text
   └── Text
```

A propriedade `children` recebe uma lista representada por:

```dart
[
  // Widgets
]
```

Por isso conseguimos adicionar vários Widgets dentro dela.

---

### 🧠 Visualizando a construção da interface

Podemos imaginar a construção de uma tela Flutter como **blocos sendo encaixados uns dentro dos outros**.

Por exemplo:

```text
Scaffold
   │
   └── Center
        │
        └── Column
             │
             ├── Text
             └── Text
```

Cada Widget possui uma responsabilidade:

**Scaffold** → fornece a estrutura básica da tela.

**Center** → centraliza o conteúdo.

**Column** → organiza os elementos verticalmente.

**Text** → exibe informações para o usuário.

Ao combinar esses Widgets, conseguimos construir interfaces cada vez mais completas.

> 💡 **Lembre-se:** no Flutter, praticamente tudo que aparece na interface é um Widget. Construímos nossas telas combinando Widgets e organizando a relação entre eles dentro da **Árvore de Widgets**.

---

# 🧱 StatelessWidget

No projeto encontramos:

```dart
class MyApp extends StatelessWidget
```

Um `StatelessWidget` é utilizado para representar um Widget que **não possui um estado interno que precisa ser alterado durante sua utilização**.

No nosso exemplo, `MyApp` é responsável principalmente pelas configurações iniciais da aplicação.

Dentro dele encontramos:

```dart
MaterialApp
```

que configura elementos gerais do aplicativo, como:

- tema;
- cores;
- tela inicial;
- configurações do Material Design.

---

# 🔄 StatefulWidget

Também encontramos:

```dart
class MyHomePage extends StatefulWidget
```

Um `StatefulWidget` é utilizado quando precisamos trabalhar com **informações que podem mudar durante a execução da aplicação**.

Neste projeto temos um contador:

```dart
int _counter = 0;
```

O valor começa em:

```text
0
```

Quando o usuário pressiona o botão `+`, esse valor é alterado.

---

# ➕ Interação com o usuário

O botão da aplicação utiliza:

```dart
onPressed: _incrementCounter
```

Isso significa que, quando o usuário clicar no botão, a função:

```dart
_incrementCounter()
```

será executada.

Dentro dela encontramos:

```dart
setState(() {
  _counter++;
});
```

O comando:

```dart
_counter++;
```

aumenta o contador em `1`.

Já o:

```dart
setState()
```

avisa ao Flutter que **o estado da aplicação mudou e a interface precisa ser atualizada**.

Por isso conseguimos visualizar o novo valor do contador na tela.

---

# 🔍 Entendendo o fluxo

Quando clicamos no botão `+`, podemos imaginar o seguinte fluxo:

```text
Usuário
   │
   ▼
Clica no botão +
   │
   ▼
onPressed
   │
   ▼
_incrementCounter()
   │
   ▼
setState()
   │
   ▼
_counter++
   │
   ▼
Flutter reconstrói a interface
   │
   ▼
Novo valor aparece na tela
```

---

# ⚡ Hot Reload

Durante o desenvolvimento com Flutter podemos utilizar o **Hot Reload**.

Ele permite visualizar muitas alterações feitas no código sem precisar reiniciar completamente o aplicativo.

Isso facilita bastante o desenvolvimento e os testes da interface.

> 💡 Importante: o Hot Reload normalmente preserva o estado atual da aplicação.

Por exemplo, se o contador estiver em `5` e fizermos uma alteração visual compatível com Hot Reload, o contador poderá continuar em `5`.

---

# 🔥 Hot Reload x Hot Restart

### Hot Reload

Atualiza as alterações realizadas no código tentando preservar o estado atual da aplicação.

### Hot Restart

Reinicia a aplicação e recria seu estado.

No nosso contador, isso significa que o valor poderá voltar para:

```text
0
```

---

# ▶️ Executando o projeto

Para verificar o ambiente Flutter:

```bash
flutter doctor
```

Para executar o aplicativo:

```bash
flutter run
```

Também podemos selecionar um dispositivo ou emulador através do **VS Code** ou **Android Studio**.

---

# 🧪 Desafio

Agora que você conhece a estrutura básica do projeto, faça algumas alterações no aplicativo.

Experimente:

- Alterar o título da aplicação;
- Traduzir o texto exibido na tela;
- Alterar a cor principal;
- Trocar o ícone do botão;
- Modificar o valor inicial do contador;
- Criar um botão para diminuir o contador.

### ⭐ Desafio extra

Crie uma função:

```dart
void _decrementCounter()
```

que diminua o valor do contador.

Depois pense:

> Como poderíamos adicionar esse novo botão à nossa árvore de Widgets?

---

# 📚 Conceitos estudados

Ao final deste projeto, teremos trabalhado com conceitos fundamentais do Flutter:

`main()` • `runApp()` • Widgets • Árvore de Widgets • `MaterialApp` • `Scaffold` • `StatelessWidget` • `StatefulWidget` • Estado • `setState()` • `build()` • `BuildContext` • `Text` • `Column` • `AppBar` • `FloatingActionButton` • Hot Reload

---

## 💡 Lembre-se

No Flutter, construímos interfaces combinando **Widgets**.

Quanto melhor entendermos como esses Widgets se relacionam dentro da árvore, mais fácil será construir aplicações maiores e organizar nossos projetos.

Este é apenas o nosso primeiro passo. 🚀📱