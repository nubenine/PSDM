({double subtotal, double total, double iveValor}) calcularFactura({required double prezo, int unidades = 1, double ive= 0.21}){

	final subtotal = prezo*unidades;
  final iveValor = subtotal * ive;
  final total = subtotal + iveValor;

  return(subtotal: subtotal, total: total, iveValor: iveValor);


}

void main(List<String> args) {
  print(calcularFactura(prezo: 500));
}