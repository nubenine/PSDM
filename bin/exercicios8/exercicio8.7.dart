String saudoPersoal(String nome, [String? alcume]){
  if(alcume!=null){
    return "Ola, $nome $alcume";
  } else {
    return "Ola, $nome";
  }
} 

void main(List<String> args) {
  print(saudoPersoal("NiggaOne"));
  print(saudoPersoal("NiggaTwo", "NiggaThree"));
}