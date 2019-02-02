
AT=

%: Makefile.coq phony
	${AT}+make -f Makefile.coq $@

all: all_coq all_html

.PHONY: all all_coq all_html doc clean clean_all

all_coq: Makefile.coq
	${AT}+make -f Makefile.coq all

all_html: Makefile.coq
	${AT}+make -f Makefile.coq html

doc: all_html

clean: Makefile.coq
	${AT}+make -f Makefile.coq clean
	${AT}rm -f Makefile.coq

Makefile.coq: _CoqProject Makefile
	${AT}coq_makefile -f _CoqProject -o Makefile.coq

_CoqProject: ;

Makefile: ;

clean_all: clean clean_tlc

