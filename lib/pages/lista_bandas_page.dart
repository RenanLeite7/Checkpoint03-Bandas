import 'package:checkpoint3/model/Banda.dart';
import 'package:checkpoint3/pages/detalhes_banda_page.dart';
import 'package:flutter/material.dart';


class ListaBandasPage extends StatefulWidget {
  final List<Banda> bandas;

  ListaBandasPage({required this.bandas});

  @override
  _ListaBandasPageState createState() => _ListaBandasPageState();
}

class _ListaBandasPageState extends State<ListaBandasPage> {
  int favoritos = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      title: Row(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
            Image.asset('images/caveira.png', height: 50, width: 50,),
            Text('Lista de Bandas - Favoritas: $favoritos'),
         
           
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: widget.bandas.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: SizedBox(
              width: 50,
              height: 50,
              child: Image.asset(widget.bandas[index].imagemAsset),
            ),
            title: Row(
              children: [
                Text(widget.bandas[index].nome),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetalhesBandaPage(banda: widget.bandas[index]),
                      ),
                    );
                  },
                ),
              ],
            ),
            trailing: IconButton(
              icon: Icon(
                widget.bandas[index].favorito ? Icons.favorite : Icons.favorite_border,
                color: widget.bandas[index].favorito ? Colors.grey : null,
              ),
              onPressed: () {
                setState(() {
                  widget.bandas[index].favorito = !widget.bandas[index].favorito;
                  if (widget.bandas[index].favorito) {
                    favoritos++;
                  } else {
                    favoritos--;
                  }
                });
              },
            ),
          );
        },
      ),
    );
  }
}
