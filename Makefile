

export GITBOOK=gitbook
export BOOK_DEV=book-dev
export BOOK=book

.PHONY: publish
publish: books-republish

.PHONY: books-republish
books-republish:
				@ rm -rf ${BOOK}/*
				@ for book in $$(ls ./${BOOK_DEV}); do \
								src="${BOOK_DEV}/$$book"; \
								trg="${BOOK}/$$book"; \
								echo "\n$$src -> $$trg ..."; \
								${GITBOOK} build "$$src" "$$trg"; \
								echo "$$src -> $$trg [DONE]"; \
				done;


