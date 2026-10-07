
int aplicar(int x, int y, int Function(int, int) op){
  return op(x, y);
}

int suma(int x, int y){
  return x + y;
}

int restar(int x, int y){
  return x-y;
}

void main(){
	print(aplicar(2, 2, suma));
}
