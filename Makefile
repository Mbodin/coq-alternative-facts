
AT=

%: Makefile.coq phony
	${AT}+make -f Makefile.coq $@

all: all_coq all_html

.PHONY: all all_coq all_html doc tlc clean clean_all clean_tlc

all_coq: Makefile.coq
	${AT}+make -f Makefile.coq all

all_html: Makefile.coq
	${AT}+make -f Makefile.coq html

doc: all_html

clean: Makefile.coq
	${AT}+make -f Makefile.coq clean
	${AT}rm -f Makefile.coq

Makefile.coq: _CoqProject Makefile
	${AT}coq_makefile -f _CoqProject \
		| sed 's/$$(COQCHK) $$(COQCHKFLAGS) $$(COQLIBS)/$$(COQCHK) $$(COQCHKFLAGS) $$(subst -Q,-R,$$(COQLIBS))/' \
		> Makefile.coq

_CoqProject: ;

Makefile: ;

clean_all: clean clean_tlc

tlc:
	${AT}cd lib/tlc ; \
		make ; \
		cd ../..

clean_tlc:
	${AT}cd lib/tlc ; \
		make clean ; \
		cd ../..

