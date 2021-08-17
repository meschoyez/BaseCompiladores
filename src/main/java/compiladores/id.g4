grammar id;

@header {
package compiladores;
}

fragment LETRA : [A-Za-z] ;
fragment DIGITO : [0-9] ;

ID : (LETRA | '_')(LETRA | DIGITO | '_')+ ;
NUMERO : DIGITO+ ;
OTRO : . ;


s : ID { System.out.println("ID ->" + $ID.getText() + "<--"); } s
  | NUMERO { System.out.println("NUMERO ->" + $NUMERO.getText() + "<--"); } s
  | OTRO { System.out.println("Otro ->" + $OTRO.getText() + "<--"); } s
  | EOF
  ;
