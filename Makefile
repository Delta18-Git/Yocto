all: clean main.byte

main.byte: src/main.ml src/lexer.mll src/parser.mly src/codegen.ml src/expr.ml
	cd src;\
	ocamlbuild -use-ocamlfind -pkgs menhir,yojson main.byte

clean:
	cd src;\
	ocamlbuild -clean
