HELM=helm
REPO_URL=https://flexkube.github.io/charts/

.PHONY: all
all: update package index

.PHONY: update
update:
	git submodule update --recursive --remote

.PHONY: index
index:
	$(HELM) repo index --url $(REPO_URL) .

.PHONY: package
package:
	for i in $$(cat .gitmodules | grep submodule | cut -d'"' -f2); do helm package $$i; done
