procesar(List<String> items, {void Function(String)? onItem}){
  for(var elemento in items){
		if (onItem == null){
    	print("onItem==null. elemento = $elemento");
  	} else {
      	onItem(elemento);
    }
  }
}

void imprimir(String n){
  print("Almendrardo: $n");
}

void main(List<String> args) {
  List<String> froitas = ["maza", "kiwi", "fresa", "melon", "sandia"];
  procesar(froitas);
  procesar(froitas, onItem: imprimir);
  procesar(froitas, onItem: (n) => print("Almendrado $n"));
}