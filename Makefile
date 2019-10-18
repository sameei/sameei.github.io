

export GITBOOK=gitbook

.PHONY: publish
publish: computer-publish

.PHONY: comuter-clean
computer-clean:
				rm -rf computer/*

.PHONY: computer-pubish
computer-publish: computer-clean
				${GITBOOK} build .computer computer


