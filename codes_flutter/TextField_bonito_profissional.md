# Como criar um TextField bonito e profissional com Flutter?

### Autor
Mikeias Sousa <https://web.dio.me/topics/como-criar-um-textfield-bonito-e-profissional-com-flutter?back=%2Ftrack%2Fsantander-bootcamp-2023-mobile-com-flutter&order=undefined&page=1&search=&tab=forum&track_id=5de8e6aa-4fa2-4954-9279-ff8faf1ae805>

Um Campo de texto (ou TextField, em inglês), é a área onde o usuário irá digitar os dados.

Neste artigo vou te ensinar a criar um TextField elegante, onde você pode usar em suas telas de login ou onde você quise.

Optei por usar dois widgets para que você (iniciante) possa aprender a usá-los também.

A lógica é a seguinte:

Vamos criar e personalizar primeiro um Container, que será a base, o TextField será o child dele:
Container(
            //queremos que ele tenha uma margem na esqueda e na direita de 20 pixels, para isso vou usar o margin Symmetric na horizontal de 20
            margin: const EdgeInsets.symmetric(horizontal: 20),
            //também queremos que tudo nele esteja com um espaçamento interno, para isso usamos o padding
            //o symmetric coloca o mesmo padding nos lados(horizontal) e na vertical
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: const BoxDecoration(
              //vamos arredondar as bordas do container
              borderRadius: BorderRadius.all(Radius.circular(32)),
              //vamos adicionar a cor que queremos no textfield
              color: Color(0xff0dab76),
            ),
            child: TextField(
            //vamos personalizar o TextField aqui
            ),
                      ),
            
Se você executar o codigo acima, já é possivel ver o TextField, porém está feio. Vamos personalizar ele para ficar show de bola:
   TextField(

                cursorColor: Color(0xff0dab76),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
//aqui é o espaçamento do conteudo
                        contentPadding: EdgeInsets.symmetric(vertical:15, horizontal: 25),
                        hintStyle: TextStyle(
                          color: Color(0xff0dab76),
                        ),
                        hintText: 'Digite seu e-mail...',
 //temos que tirar essa borda do TextField, as cores e bordas ficam por conta do container base<3
                        border: InputBorder.none,
//vamos adicionar um ícone
                        prefixIcon: Icon(Icons.email, color: Color(0xff0dab76),)
                      ),
                    ),
Pronto. Personalizamos o Container base e o TextField, agora vai o codigo completo:



Container(
              margin: const EdgeInsets.symmetric(horizontal: 20), //Cria uma margem simétrica na horizontal, 20 pixel de margem na esquerda e 20 na direita
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: const BoxDecoration(
                //vamos precisar arredondar as bordas
                borderRadius: BorderRadius.all(Radius.circular(32)),
                color: Color(0xffcfeee4)
              ),
              child: const TextField(
                  cursorColor: Color(0xff0dab76),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical:15, horizontal: 25),
                  hintStyle: TextStyle(
                    color: Color(0xff0dab76),
                  ),
                  hintText: 'Digite seu e-mail...',
                  border: InputBorder.none, //temos que tirar essa borda do TextField, as cores e bordas ficam por conta do container<3
                  prefixIcon: Icon(Icons.email, color: Color(0xff0dab76),)
                ),
              ),
        ),
Está feito. O próximo post irei ensinar a como você pode transformar isso em widget e usar em todo o projeto.

Neste post você aprendeu:

Como personalizar um container,
como usar o text field
Como usar dois Widgets em conjunto
Bons estudos :-)