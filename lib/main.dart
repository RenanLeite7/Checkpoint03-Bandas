import 'package:checkpoint3/model/Banda.dart';
import 'package:checkpoint3/pages/lista_bandas_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bandas',
      theme: ThemeData.dark(

      ),
      
      home: ListaBandasPage(
        bandas: [
          Banda(
            nome: 'Led Zeppelin',
            imagemAsset: 'images/led.png',
            detalhes: 'Led Zeppelin foi uma banda britânica de rock formada em Londres, em 1968. Consistia no guitarrista Jimmy Page, no vocalista Robert Plant, no baixista e tecladista John Paul Jones e no baterista John Bonham. Seu som pesado e violento de guitarra, enraizado no blues e música psicodélica de seus dois primeiros álbuns, é frequentemente reconhecido como um dos fundadores do heavy metal. Seu estilo foi inspirado em uma grande variedade de influências, incluindo a música folk, psicodélica e o blues.',
            imagemDetalhes: 'images/led_detalhes.png',
          ),
          Banda(
            nome: 'Queen',
            imagemAsset: 'images/queen.png',
            detalhes: 'Queen foi uma banda britânica de rock, fundada em 1970 e ativa, sob sua formação clássica, até 1991. O grupo, formado por Brian May (guitarra e vocais), Freddie Mercury (vocais e piano), John Deacon (baixo) e Roger Taylor (bateria e vocais), é frequentemente citado como um dos expoentes do seu estilo, também sendo um dos recordistas de vendas de discos a nível mundial. A música da banda também é conhecida por ser altamente eclética, variando entre várias vertentes do rock.',
            imagemDetalhes: 'images/queen_detalhes.png',
          ),
          Banda(
            nome: 'Pink Floyd',
            imagemAsset: 'images/pink.png',
            detalhes: 'Pink Floyd foi uma banda britânica de rock formada em Londres em 1965. Ganhando seguidores como um grupo de rock psicodélico, eles se destacaram por suas composições longas, pela experimentação sonora, pelas letras filosóficas e pelas apresentações ao vivo criativas, o que levou a se tornarem uma banda líder do gênero do rock progressivo. Eles são um dos grupos mais bem-sucedidos comercialmente e influentes da história da música popular.',
            imagemDetalhes: 'images/pink_detalhes.png',
          ),
          Banda(
            nome: 'AC/DC',
            imagemAsset: 'images/acdc.png',
            detalhes: 'AC/DC (estilizado como ACϟDC) é uma banda australiana de rock formada em Sydney, Austrália em 1973, pelos irmãos escoceses Malcolm e Angus Young. O estilo musical da banda é normalmente classificado como hard rock e até mesmo blues rock. Mas seus membros sempre classificaram a sua música simplesmente como "rock and roll".',
            imagemDetalhes: 'images/acdc_detalhes.png',
          ),
          Banda(
            nome: 'The Rolling Stones',
            imagemAsset: 'images/stones.png',
            detalhes: 'The Rolling Stones é uma banda de rock britânica formada em Londres no ano de 1962, considerada um dos maiores, mais antigos e mais bem sucedidos grupos musicais de todos os tempos. Ao lado dos Beatles, são considerados a banda mais importante da chamada Invasão Britânica ocorrida nos anos 1960. A banda e seus membros ocuparam posição de destaque nas mudanças musicais e comportamentais dos anos 1960 e são frequentemente relacionados com a contracultura, rebeldia e juventude da época.',
            imagemDetalhes: 'images/stones_detalhes.png',
          ),
        ],
      ),
    );
  }
}
